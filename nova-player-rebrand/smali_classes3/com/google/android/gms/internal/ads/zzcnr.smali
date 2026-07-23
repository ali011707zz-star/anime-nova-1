.class final Lcom/google/android/gms/internal/ads/zzcnr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzctk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcnp;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfgn;

.field private zzc:Lcom/google/android/gms/internal/ads/zzffr;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdhf;

.field private zze:Lcom/google/android/gms/internal/ads/zzdao;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zza:Lcom/google/android/gms/internal/ads/zzcnp;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzctl;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzd:Lcom/google/android/gms/internal/ads/zzdhf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zze:Lcom/google/android/gms/internal/ads/zzdao;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdao;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcns;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcxl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcxl;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfkq;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfkq;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzczm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzczm;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzd:Lcom/google/android/gms/internal/ads/zzdhf;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zze:Lcom/google/android/gms/internal/ads/zzdao;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoc;->zza()Lcom/google/android/gms/internal/ads/zzeoa;

    move-result-object v10

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzc:Lcom/google/android/gms/internal/ads/zzffr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zza:Lcom/google/android/gms/internal/ads/zzcnp;

    const/4 v11, 0x0

    .line 3
    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzcns;-><init>(Lcom/google/android/gms/internal/ads/zzcnp;Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzfkq;Lcom/google/android/gms/internal/ads/zzczm;Lcom/google/android/gms/internal/ads/zzdyo;Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzeoa;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzffr;)V

    return-object v2
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/internal/ads/zzctk;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zze:Lcom/google/android/gms/internal/ads/zzdao;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdhf;)Lcom/google/android/gms/internal/ads/zzctk;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzd:Lcom/google/android/gms/internal/ads/zzdhf;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcnr;->zza()Lcom/google/android/gms/internal/ads/zzctl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzffr;)Lcom/google/android/gms/internal/ads/zzdal;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzc:Lcom/google/android/gms/internal/ads/zzffr;

    return-object p0
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzdal;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    return-object p0
.end method
