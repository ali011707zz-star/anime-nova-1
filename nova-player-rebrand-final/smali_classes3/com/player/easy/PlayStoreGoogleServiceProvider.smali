.class public final Lcom/player/easy/PlayStoreGoogleServiceProvider;
.super Ljava/lang/Object;
.source "PlayStoreGoogleServiceProvider.kt"

# interfaces
.implements Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/player/easy/PlayStoreGoogleServiceProvider;",
        "Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;",
        "<init>",
        "()V",
        "consentInformation",
        "Lcom/google/android/ump/ConsentInformation;",
        "isMobileAdsInitializeCalled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "initializeConsentAndAdsIfNeeded",
        "",
        "activity",
        "Landroid/app/Activity;",
        "initializeMobileAdsSdk",
        "appContext",
        "Landroid/content/Context;",
        "playstore-app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private consentInformation:Lcom/google/android/ump/ConsentInformation;

.field private isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$FkDJJrdQdiUVc6J3O3jiSlYSVKs(Lcom/player/easy/PlayStoreGoogleServiceProvider;Landroid/app/Activity;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/PlayStoreGoogleServiceProvider;->initializeConsentAndAdsIfNeeded$lambda$1$0(Lcom/player/easy/PlayStoreGoogleServiceProvider;Landroid/app/Activity;Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Se0mgPGeYVpeaabD8sy3iuwF8zE(Landroid/app/Activity;Lcom/player/easy/PlayStoreGoogleServiceProvider;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/PlayStoreGoogleServiceProvider;->initializeConsentAndAdsIfNeeded$lambda$1(Landroid/app/Activity;Lcom/player/easy/PlayStoreGoogleServiceProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUTQ3c_InTz2aC8M1m9qwP0lkVg(Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/PlayStoreGoogleServiceProvider;->initializeConsentAndAdsIfNeeded$lambda$2(Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static final initializeConsentAndAdsIfNeeded$lambda$1(Landroid/app/Activity;Lcom/player/easy/PlayStoreGoogleServiceProvider;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/PlayStoreGoogleServiceProvider;Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method

.method private static final initializeConsentAndAdsIfNeeded$lambda$1$0(Lcom/player/easy/PlayStoreGoogleServiceProvider;Landroid/app/Activity;Lcom/google/android/ump/FormError;)V
    .locals 6

    .line 94
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object p2, v4, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%s: %s"

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "format(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object p2, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    if-nez p2, :cond_2

    const-string p2, "consentInformation"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, p2

    :goto_2
    invoke-interface {v1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/player/easy/PlayStoreGoogleServiceProvider;->initializeMobileAdsSdk(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method private static final initializeConsentAndAdsIfNeeded$lambda$2(Lcom/google/android/ump/FormError;)V
    .locals 5

    .line 103
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 104
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p0, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s: %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "format(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Object;

    .line 103
    invoke-virtual {v0, p0, v1}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final initializeMobileAdsSdk(Landroid/content/Context;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initializeConsentAndAdsIfNeeded(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v1

    const-string v2, "getConsentInformation(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    const/4 v2, 0x0

    .line 88
    const-string v3, "consentInformation"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    new-instance v4, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, p0}, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/player/easy/PlayStoreGoogleServiceProvider;)V

    .line 101
    new-instance v5, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 88
    invoke-interface {v1, p1, v0, v4, v5}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 112
    iget-object v0, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-interface {v2}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/player/easy/PlayStoreGoogleServiceProvider;->initializeMobileAdsSdk(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
