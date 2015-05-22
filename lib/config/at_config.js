//Routes
AccountsTemplates.configureRoute('changePwd');
AccountsTemplates.configureRoute('enrollAccount');
AccountsTemplates.configureRoute('forgotPwd');
AccountsTemplates.configureRoute('resetPwd');
AccountsTemplates.configureRoute('signIn');
AccountsTemplates.configureRoute('signUp');
AccountsTemplates.configureRoute('verifyEmail');

// Options
AccountsTemplates.configure({
    //defaultLayout: 'emptyLayout',
    showForgotPasswordLink: true,
    overrideLoginErrors: true,
    enablePasswordChange: true,
    sendVerificationEmail: false,

    // Appearance
    // showAddRemoveServices: false,
    // showForgotPasswordLink: false,
    // showLabels: false,
    // showPlaceholders: true,
    // showResendVerificationEmailLink: false,

    negativeValidation: true,
    positiveValidation:true,
    negativeFeedback: false,
    positiveFeedback:true,

    // Privacy Policy and Terms of Use
    //privacyUrl: 'privacy',
    //termsUrl: 'terms-of-use',
});

AccountsTemplates.addFields([
    {
        _id: 'username',
        type: 'text',
        required: true,
        displayName: 'Username',
        errStr: 'Username required.',
        trim: true
    },
    {
        _id: 'name',
        type: 'text',
        required: false,
        displayName: 'Full Name',
        func: function (e){return"Full Name"===e},
        errStr: 'Only "Full Name" allowed!',
        trim: true,
    }
]);
