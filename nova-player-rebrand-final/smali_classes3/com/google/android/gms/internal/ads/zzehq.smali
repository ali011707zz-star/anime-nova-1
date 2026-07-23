.class public final Lcom/google/android/gms/internal/ads/zzehq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzehq;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzehq;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehq;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeib;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeib;->zza()Lcom/google/android/gms/internal/ads/zzehz;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcmd;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcmd;->zza()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzehp;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzehp;-><init>(Lcom/google/android/gms/internal/ads/zzehz;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v2
.end method
