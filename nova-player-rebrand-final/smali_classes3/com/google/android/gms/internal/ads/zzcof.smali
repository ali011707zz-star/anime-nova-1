.class final Lcom/google/android/gms/internal/ads/zzcof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzr;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzc:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzd:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbph;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcnp;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcof;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbph;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzh:Lcom/google/android/gms/internal/ads/zzcof;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzg:Lcom/google/android/gms/internal/ads/zzcnp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcof;->zze:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzf:Lcom/google/android/gms/internal/ads/zzbph;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzikh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzikg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzikh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzikg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdzn;->zzc(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdzn;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdzp;->zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdzp;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzdzm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzf:Lcom/google/android/gms/internal/ads/zzbph;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzn;->zzd(Lcom/google/android/gms/internal/ads/zzbph;)Lcom/google/android/gms/internal/ads/zzdzm;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdzo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzo;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdzj;
    .locals 4

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzg:Lcom/google/android/gms/internal/ads/zzcnp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzh:Lcom/google/android/gms/internal/ads/zzcof;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzcnp;Lcom/google/android/gms/internal/ads/zzcof;[B)V

    return-object v0
.end method

.method final synthetic zzd()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zze:Landroid/content/Context;

    return-object v0
.end method
