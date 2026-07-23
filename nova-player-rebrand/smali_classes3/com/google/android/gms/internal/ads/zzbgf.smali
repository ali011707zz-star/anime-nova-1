.class final synthetic Lcom/google/android/gms/internal/ads/zzbgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/client/zzq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzbgf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgf;->zza:Lcom/google/android/gms/internal/ads/zzbgf;

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
    .locals 0

    .line 0
    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcz;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object p1

    return-object p1
.end method
