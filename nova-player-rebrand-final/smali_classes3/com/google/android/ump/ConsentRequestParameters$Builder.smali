.class public final Lcom/google/android/ump/ConsentRequestParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ump/ConsentRequestParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Z

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/ump/ConsentDebugSettings;

.field private zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Lcom/google/android/ump/ConsentDebugSettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zza:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/ump/ConsentRequestParameters;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 0
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/ump/ConsentRequestParameters;-><init>(Lcom/google/android/ump/ConsentRequestParameters$Builder;Lcom/google/android/ump/zzb;)V

    return-object v0
.end method

.method public setAdMobAppId(Ljava/lang/String;)Lcom/google/android/ump/ConsentRequestParameters$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setConsentDebugSettings(Lcom/google/android/ump/ConsentDebugSettings;)Lcom/google/android/ump/ConsentRequestParameters$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    return-object p0
.end method

.method public setConsentSyncId(Ljava/lang/String;)Lcom/google/android/ump/ConsentRequestParameters$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    const-string v0, "^[0-9a-zA-Z+.=\\/_,$\\-{}]{22,150}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "UserMessagingPlatform"

    const-string v0, "The UMP SDK requires a valid consent sync ID matching the following regex: ^[0-9a-zA-Z+.=\\/_,$\\-{}]{22,150}$. See the setConsentSyncId() API documentation for more details."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 0
    iput-boolean p1, p0, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zza:Z

    return-object p0
.end method
