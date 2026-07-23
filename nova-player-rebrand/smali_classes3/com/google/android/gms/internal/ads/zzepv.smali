.class public final Lcom/google/android/gms/internal/ads/zzepv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepv;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepv;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepv;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepv;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzepv;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzepv;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepv;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepv;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepv;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzepx;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzepx;->zza()Lcom/google/android/gms/internal/ads/zzbhz;

    move-result-object v2

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzepv;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeqe;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeqe;->zza()Lcom/google/android/gms/internal/ads/zzeqd;

    move-result-object v3

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzepu;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzepu;-><init>(Lcom/google/android/gms/internal/ads/zzfnu;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzbhz;Lcom/google/android/gms/internal/ads/zzeqd;)V

    return-object v4
.end method
