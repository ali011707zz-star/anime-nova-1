.class public final Lcom/google/android/gms/internal/ads/zzcft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcge;

.field private final zzc:Landroid/view/ViewGroup;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdxz;

.field private zze:Lcom/google/android/gms/internal/ads/zzcfs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcft;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzc:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzb:Lcom/google/android/gms/internal/ads/zzcge;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzd:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzl()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb(IIII)V
    .locals 1

    .line 1
    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzn(IIII)V

    :cond_0
    return-void
.end method

.method public final zzc(IIIIIZLcom/google/android/gms/internal/ads/zzcgd;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzb:Lcom/google/android/gms/internal/ads/zzcge;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcge;->zzq()Lcom/google/android/gms/internal/ads/zzbhr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhr;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v0

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcge;->zzi()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object v1

    const-string v2, "vpr2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbhl;->zza(Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzbhq;[Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcft;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfs;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcge;->zzq()Lcom/google/android/gms/internal/ads/zzbhr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhr;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzd:Lcom/google/android/gms/internal/ads/zzdxz;

    move v4, p5

    move v5, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcge;IZLcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzcgd;Lcom/google/android/gms/internal/ads/zzdxz;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzc:Landroid/view/ViewGroup;

    new-instance p6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    .line 5
    invoke-direct {p6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    .line 6
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcfs;->zzn(IIII)V

    .line 7
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzcge;->zzdn(Z)V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzcfs;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    return-object v0
.end method

.method public final zze()V
    .locals 1

    .line 1
    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzr()V

    :cond_0
    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzE()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zzc:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    :cond_0
    return-void
.end method

.method public final zzg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zze:Lcom/google/android/gms/internal/ads/zzcfs;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfs;->zzm(I)V

    :cond_0
    return-void
.end method
