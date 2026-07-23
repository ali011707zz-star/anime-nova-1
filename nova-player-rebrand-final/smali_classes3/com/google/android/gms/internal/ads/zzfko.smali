.class public final Lcom/google/android/gms/internal/ads/zzfko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfkn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfkn;)Lcom/google/android/gms/internal/ads/zzfko;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfko;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfko;-><init>(Lcom/google/android/gms/internal/ads/zzfkn;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
