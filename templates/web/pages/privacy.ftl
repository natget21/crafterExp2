<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>
    <!-- Header Section (Logo, Search Bar, etc.) -->
    <#include "/templates/web/fragments/header.ftl">
    
     <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">

<!-- Main Content Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-lg-12">
                <h2 class="mb-4">Privacy & Legal Information</h2>

                <!-- Terms and Conditions Section -->
                <section id="tac">
                    <h3>Terms and Conditions</h3>
                    <p>
                        Welcome to our platform. By accessing and using our services, you agree to comply with and be bound by the following terms and conditions. 
                        Please read them carefully before using our website.
                    </p>
                    
                    <h4>1. Acceptance of Terms</h4>
                    <p>
                        By using our services, you acknowledge that you have read and understood these terms and conditions. 
                        If you do not agree with any part of these terms, you must not use our services.
                    </p>

                    <h4>2. Use of Our Services</h4>
                    <p>
                        You agree to use our services for lawful purposes only. Any fraudulent, harmful, or illegal activity will result in immediate suspension or termination of access.
                    </p>

                    <h4>3. User Responsibilities</h4>
                    <p>
                        Users are responsible for maintaining the confidentiality of their account credentials and for any activity that occurs under their account.
                    </p>

                    <h4>4. Intellectual Property</h4>
                    <p>
                        All content, including but not limited to text, images, and logos, is the property of our platform and may not be used without explicit permission.
                    </p>

                    <h4>5. Liability Limitation</h4>
                    <p>
                        We are not responsible for any direct, indirect, incidental, or consequential damages arising from the use of our services.
                    </p>

                    <h4>6. Changes to Terms</h4>
                    <p>
                        We reserve the right to modify these terms at any time. Continued use of our services after changes constitutes acceptance of the new terms.
                    </p>
                </section>

                <hr class="my-5">

                <!-- GDPR Policy Section -->
                <section id="gdpr">
                    <h3>GDPR Privacy Policy</h3>
                    <p>
                        Your privacy is important to us. This GDPR policy outlines how we collect, use, and protect your personal data in compliance with the General Data Protection Regulation (GDPR).
                    </p>

                    <h4>1. Data Collection</h4>
                    <p>
                        We collect personal data such as name, email, and contact information when you use our services. This data is used solely for the purposes of providing our services and improving user experience.
                    </p>

                    <h4>2. Legal Basis for Processing</h4>
                    <p>
                        We process personal data based on user consent, contractual necessity, or legal obligations. You have the right to withdraw consent at any time.
                    </p>

                    <h4>3. Data Protection</h4>
                    <p>
                        We implement robust security measures to protect personal data from unauthorized access, alteration, or disclosure.
                    </p>

                    <h4>4. Your Rights</h4>
                    <p>
                        Under GDPR, you have the right to access, correct, delete, or restrict processing of your personal data. You can also request data portability and object to automated decision-making.
                    </p>

                    <h4>5. Data Retention</h4>
                    <p>
                        We retain personal data only for as long as necessary to fulfill the purposes outlined in this policy. Once no longer needed, data is securely deleted.
                    </p>

                    <h4>6. Contact Us</h4>
                    <p>
                        If you have any questions regarding our GDPR policy or wish to exercise your rights, please contact us at <a href="mailto:privacy@ideale.com">privacy@ideale.com</a>.
                    </p>
                </section>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">

    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>