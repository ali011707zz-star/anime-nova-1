.class public final Lcom/google/android/gms/internal/ads/zzdmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdmk;
    .locals 6

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmk;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdmk;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzikk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzikk;->zzd()Ljava/util/Map;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzikk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzikk;->zzd()Ljava/util/Map;

    move-result-object v3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzikk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzikk;->zzd()Ljava/util/Map;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmo;->zza()Lcom/google/android/gms/internal/ads/zzdor;

    move-result-object v6

    .line 2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmj;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdmj;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzikv;Lcom/google/android/gms/internal/ads/zzdor;)V

    return-object v1
.end method
