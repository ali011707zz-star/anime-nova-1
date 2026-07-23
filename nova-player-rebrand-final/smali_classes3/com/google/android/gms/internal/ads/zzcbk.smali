.class final synthetic Lcom/google/android/gms/internal/ads/zzcbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/client/zzq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcbk;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcbk;->zza:Lcom/google/android/gms/internal/ads/zzcbk;

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
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcbd;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbd;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
