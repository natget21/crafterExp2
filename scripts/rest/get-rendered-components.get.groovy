import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.PrintWriter

import javax.servlet.Filter
import javax.servlet.FilterChain
import javax.servlet.FilterConfig
import javax.servlet.ServletException
import javax.servlet.ServletOutputStream
import javax.servlet.ServletRequest
import javax.servlet.ServletResponse
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
import javax.servlet.http.HttpServletResponseWrapper
import javax.servlet.WriteListener
import groovy.util.XmlSlurper

def result = [:]
def targetPage = params.pageId

if (targetPage != null) {
        result.page = targetPage

        def pageItem = siteItemService.getSiteItem(targetPage)

        if (pageItem != null) {
                def componentPaths = pageItem.queryValues("//include")
                result.components = []

                if (componentPaths != null) {
                        componentPaths.each { componentPath ->
                                if (componentPath.endsWith(".xml") && !componentPath.startsWith("/site/website") ) {
                                        logger.info("Including component ${componentPath} into JSON response")

                                        def component = [:]
                                        component.id = componentPath

                                        // wrap the response to capture the output
                                        def wrappedResponse = new CapturingResponseWrapper(response)

                                        // "include" the page that does the actual work
                                        request.getRequestDispatcher("/crafter-controller/component?path=" + componentPath).include(request, wrappedResponse)

                                        // get the captured output, parse it and prepare the actual response
                                        def capturedOut = wrappedResponse.getCaptureAsString()

                                        component.markup = capturedOut

                                        result.components.add(component)
                                }
                        }
                } else {
                        result.message = "No components found"
                }
        } else {
                result.message = "Page '${targetPage}` not found"
        }
} else {
        result.message = "Parameter pageId is required."
}

return result

protected class CapturingResponseWrapper extends HttpServletResponseWrapper {

        private final ByteArrayOutputStream capture
        private ServletOutputStream output
        private PrintWriter writer

        public CapturingResponseWrapper(HttpServletResponse response) {
                super(response)
                capture = new ByteArrayOutputStream(response.getBufferSize())
        }

        @Override
        public ServletOutputStream getOutputStream() {
                if (writer != null) {
                        throw new IllegalStateException("getWriter() has already been called on this response.")
                }

                if (output == null) {
                        output = new ServletOutputStream() {

                                @Override
                                public void write(int b) throws IOException {
                                        capture.write(b)
                                }

                                @Override
                                public void flush() throws IOException {
                                        capture.flush()
                                }

                                @Override
                                public void close() throws IOException {
                                        capture.close()
                                }

                                @Override
                                public void setWriteListener(WriteListener writeListener) {
                                }

                                @Override
                                public boolean isReady() {
                                        return true
                                }
                        }
                }

                return output
        }

        @Override
        public PrintWriter getWriter() throws IOException {
                if (output != null) {
                        throw new IllegalStateException("getOutputStream() has already been called on this response.")
                }

                if (writer == null) {
                        writer = new PrintWriter(new OutputStreamWriter(capture, getCharacterEncoding()))
                }

                return writer
        }

        @Override
        public void flushBuffer() throws IOException {
                super.flushBuffer()

                if (writer != null) {
                        writer.flush()
                }
                else if (output != null) {
                        output.flush()
                }
        }

        public byte[] getCaptureAsBytes() throws IOException {
                if (writer != null) {
                        writer.close()
                }
                else if (output != null) {
                        output.close()
                }

                return capture.toByteArray()
        }

        public String getCaptureAsString() throws IOException {
                return new String(getCaptureAsBytes(), getCharacterEncoding())
        }

}