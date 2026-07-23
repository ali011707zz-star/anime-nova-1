.class final Lcom/google/android/gms/internal/ads/zzcom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzefx;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcnp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcom;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;Landroid/content/Context;)V
    .locals 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzd:Lcom/google/android/gms/internal/ads/zzcom;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzc:Lcom/google/android/gms/internal/ads/zzcnp;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzaC:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzehf;->zzc(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzehf;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcom;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzf:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zza()Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcnj;->zza:Lcom/google/android/gms/internal/ads/zzcnk;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzaB:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzaD:Lcom/google/android/gms/internal/ads/zzikp;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzcng;->zza:Lcom/google/android/gms/internal/ads/zzcnh;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzC:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzegx;->zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzegx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzegb;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzc:Lcom/google/android/gms/internal/ads/zzcnp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcnp;->zzl:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnp;->zzI()Lcom/google/android/gms/internal/ads/zzcmc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnp;->zzI()Lcom/google/android/gms/internal/ads/zzcmc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmq;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzikf;->zzc(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzika;

    move-result-object v7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcna;->zzd(Lcom/google/android/gms/internal/ads/zzcmc;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v8

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzdxz;

    move-object v9, p0

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzefx;Lcom/google/android/gms/internal/ads/zzdxz;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzegd;
    .locals 4

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcon;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzc:Lcom/google/android/gms/internal/ads/zzcnp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzd:Lcom/google/android/gms/internal/ads/zzcom;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcon;-><init>(Lcom/google/android/gms/internal/ads/zzcnp;Lcom/google/android/gms/internal/ads/zzcom;[B)V

    return-object v0
.end method
