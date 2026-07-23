.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkw;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzkw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzkw;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkw;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzkw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.adshield.AdShieldCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)Lcom/google/ads/interactivemedia/v3/internal/zzkz;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    const v2, 0xc35000

    .line 3
    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkw;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzkw;

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkw;->zzb(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)Lcom/google/ads/interactivemedia/v3/internal/zzkz;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;

    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkv;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method private final zzb(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)Lcom/google/ads/interactivemedia/v3/internal/zzkz;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 3
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object p3

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzla;

    .line 5
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzla;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;[B)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string p2, "com.google.android.gms.ads.adshield.internal.IAdShieldClient"

    .line 6
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/ads/interactivemedia/v3/internal/zzkz;

    if-eqz p3, :cond_1

    .line 7
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzkz;

    return-object p2

    :cond_1
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzkx;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzkx;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object v1
.end method


# virtual methods
.method protected final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.ads.adshield.internal.IAdShieldCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzla;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzla;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzla;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzla;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
