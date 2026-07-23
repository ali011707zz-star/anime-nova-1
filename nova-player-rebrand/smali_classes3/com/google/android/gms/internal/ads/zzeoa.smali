.class public final Lcom/google/android/gms/internal/ads/zzeoa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzenr;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzenr;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zza:Lcom/google/android/gms/internal/ads/zzenr;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzenr;)Lcom/google/android/gms/internal/ads/zzeoa;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeoa;-><init>(Lcom/google/android/gms/internal/ads/zzenr;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzent;Lcom/google/android/gms/internal/ads/zzekl;Lcom/google/android/gms/internal/ads/zzfqk;)Lcom/google/android/gms/internal/ads/zzenr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zza:Lcom/google/android/gms/internal/ads/zzenr;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenr;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzenr;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzent;Lcom/google/android/gms/internal/ads/zzekl;Lcom/google/android/gms/internal/ads/zzfqk;)V

    return-object v0
.end method
