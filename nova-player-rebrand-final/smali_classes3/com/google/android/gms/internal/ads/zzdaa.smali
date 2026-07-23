.class public final Lcom/google/android/gms/internal/ads/zzdaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdaa;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdaa;-><init>(Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwz;->zza()Lcom/google/android/gms/internal/ads/zzfjc;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzczz;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzczz;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;)V

    return-object v1
.end method
