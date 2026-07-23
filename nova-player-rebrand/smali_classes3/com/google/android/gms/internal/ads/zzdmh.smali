.class public final Lcom/google/android/gms/internal/ads/zzdmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzdir;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzccn;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzccq;

.field private final zzd:Landroid/view/View;

.field private zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfir;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzccq;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;Lcom/google/android/gms/internal/ads/zzfir;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzccn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzc:Lcom/google/android/gms/internal/ads/zzccq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzd:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzc:Lcom/google/android/gms/internal/ads/zzccq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zza(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzaG:Z

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zzj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzccn;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzccn;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcag;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcag;->zzc()I

    move-result v5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzccq;->zzo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Remote Exception to get reward item."

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzdJ()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzds()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzaG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzccn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccn;->zza(Z)V

    :cond_0
    return-void
.end method

.method public final zzdt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzaG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzd:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zze:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzc:Lcom/google/android/gms/internal/ads/zzccq;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zze:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzccq;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzccn;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccn;->zza(Z)V

    :cond_1
    return-void
.end method

.method public final zze()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzg()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzaG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzc:Lcom/google/android/gms/internal/ads/zzccq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzccq;->zzf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zze:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v2, :cond_1

    const-string v0, "/Rewarded"

    goto :goto_0

    :cond_1
    const-string v0, "/Interstitial"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zze:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method
