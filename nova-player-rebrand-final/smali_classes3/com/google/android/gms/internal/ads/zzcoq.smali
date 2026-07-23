.class final Lcom/google/android/gms/internal/ads/zzcoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfil;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzc:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzd:Lcom/google/android/gms/internal/ads/zzikp;

.field final zze:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzf:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzg:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzh:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcnp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzi:Lcom/google/android/gms/internal/ads/zzcnp;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzikh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzikg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzbw:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzbx:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfgm;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfhw;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfhw;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfji;->zza()Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzab:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjm;->zza()Lcom/google/android/gms/internal/ads/zzfjm;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfif;->zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfif;

    move-result-object p2

    move-object v3, v4

    move-object v4, v6

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfip;->zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfip;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzf:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzikh;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzikg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzg:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzi:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzae:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzl:Lcom/google/android/gms/internal/ads/zzikp;

    move-object v2, v0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfij;->zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfij;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzh:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfio;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzf:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfio;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfii;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzh:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfii;

    return-object v0
.end method
