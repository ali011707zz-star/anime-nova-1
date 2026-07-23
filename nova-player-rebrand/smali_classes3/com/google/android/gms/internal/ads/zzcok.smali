.class final Lcom/google/android/gms/internal/ads/zzcok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgy;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzb:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzc:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzd:Lcom/google/android/gms/internal/ads/zzikp;

.field final zze:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzf:Lcom/google/android/gms/internal/ads/zzikp;

.field final zzg:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcnp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzh:Lcom/google/android/gms/internal/ads/zzcnp;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzikh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzikg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcok;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzikh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzikg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzikh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzikg;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzc:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzl:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzerq;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzerq;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzd:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object p4, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzbw:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzfhw;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfhw;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcok;->zze:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzab:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjm;->zza()Lcom/google/android/gms/internal/ads/zzfjm;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfgw;->zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzfgw;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzf:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzi:Lcom/google/android/gms/internal/ads/zzikp;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcnp;->zzae:Lcom/google/android/gms/internal/ads/zzikp;

    move-object v1, p2

    move-object v2, p3

    move-object v5, v4

    move-object v4, v3

    move-object v3, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzery;->zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzery;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzikf;->zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzikp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzg:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzerx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcok;->zzg:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzerx;

    return-object v0
.end method
