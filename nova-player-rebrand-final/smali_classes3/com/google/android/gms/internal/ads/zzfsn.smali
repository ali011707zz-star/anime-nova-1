.class public final Lcom/google/android/gms/internal/ads/zzfsn;
.super Lcom/google/android/gms/internal/ads/zzfsj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzftl;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfuy;

.field private zzd:Lcom/google/android/gms/internal/ads/zzftx;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsk;Lcom/google/android/gms/internal/ads/zzfsl;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsj;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzftl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:Lcom/google/android/gms/internal/ads/zzftl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Lcom/google/android/gms/internal/ads/zzfsl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzk(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfsl;->zzi()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfsm;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfsl;->zzi()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfsm;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfub;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfsl;->zze()Ljava/util/Map;

    move-result-object p2

    .line 6
    invoke-direct {v1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzfub;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfty;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfsl;->zzf()Landroid/webkit/WebView;

    move-result-object p2

    .line 4
    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzfty;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftx;->zza()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzfth;->zzb(Lcom/google/android/gms/internal/ads/zzfsn;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzftx;->zzj(Lcom/google/android/gms/internal/ads/zzfsk;)V

    return-void
.end method

.method private final zzk(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuy;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Lcom/google/android/gms/internal/ads/zzfuy;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfth;->zzc(Lcom/google/android/gms/internal/ads/zzfsn;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftp;->zza()Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftp;->zzg()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzftx;->zzo(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftf;->zza()Lcom/google/android/gms/internal/ads/zzftf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzftf;->zzb()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzftx;->zzn(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Lcom/google/android/gms/internal/ads/zzfsl;

    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzftx;->zzk(Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzfsl;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzk(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftx;->zzp()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfth;->zze()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfsn;

    if-eq v1, p0, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Lcom/google/android/gms/internal/ads/zzfuy;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Lcom/google/android/gms/internal/ads/zzfuy;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:Lcom/google/android/gms/internal/ads/zzftl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftl;->zzc()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftx;->zzm()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfth;->zzd(Lcom/google/android/gms/internal/ads/zzfsn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftx;->zzb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    return-void
.end method

.method public final zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfsq;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:Lcom/google/android/gms/internal/ads/zzftl;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzftl;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfsq;Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftl;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzftx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Lcom/google/android/gms/internal/ads/zzftx;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Lcom/google/android/gms/internal/ads/zzfuy;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
