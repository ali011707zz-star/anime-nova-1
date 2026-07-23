.class public final Lcom/google/android/gms/internal/ads/zzenm;
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

.field private final zzf:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenm;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzenm;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzf:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzenm;
    .locals 7

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenm;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzenm;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenm;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcma;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdax;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdax;->zza()Lcom/google/android/gms/internal/ads/zzdan;

    move-result-object v3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepy;->zza()Lcom/google/android/gms/internal/ads/zzepw;

    move-result-object v4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdia;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdia;->zza()Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object v5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenm;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzenr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenm;->zzf:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzekl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenl;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzenl;-><init>(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzdan;Lcom/google/android/gms/internal/ads/zzepw;Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzenr;Lcom/google/android/gms/internal/ads/zzekl;)V

    return-object v1
.end method
