enum FailureType {
  NO_INTERNET(),
  USER_DETAILS_SUBMISSION_FAILED(),
  USER_DETAILS_VERIFYING_FAILED(),
  COULD_NOT_SENT_SMS(),
  VERIFTINING_USER(),
  OTP_CODE_NOT_VERIFIED(),
  SOMETHING_WENT_WRONG();

  const FailureType();

  T? maybeWhen<T extends Object?>({
    T Function()? onNoInternet,
    T Function()? onUserDetailsSubmissionFailed,
    T Function()? onUserDetailsVerifyingFailed,
    T Function()? onSmsSentFailed,
    T Function()? onOTPCodeNotVerified,
    T Function()? onVerifying,
    T Function()? onSomethingWentWrong,
    required T Function() orElse,
  }) {
    switch (this) {
      case FailureType.NO_INTERNET:
        return onNoInternet?.call();
      case FailureType.USER_DETAILS_VERIFYING_FAILED:
        return onUserDetailsVerifyingFailed?.call();
      case FailureType.USER_DETAILS_SUBMISSION_FAILED:
        return onUserDetailsSubmissionFailed?.call();
      case FailureType.COULD_NOT_SENT_SMS:
        return onSmsSentFailed?.call();
      case FailureType.OTP_CODE_NOT_VERIFIED:
        return onOTPCodeNotVerified?.call();
      case FailureType.VERIFTINING_USER:
        return onVerifying?.call();
      case FailureType.SOMETHING_WENT_WRONG:
        return onSomethingWentWrong?.call();
      default:
        return orElse();
    }
  }
}
