.class final synthetic Lcom/google/android/gms/ads/internal/client/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/client/zzq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzar;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzar;->zza:Lcom/google/android/gms/ads/internal/client/zzar;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdPreloaderCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzcl;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzcl;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzcl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzcl;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
