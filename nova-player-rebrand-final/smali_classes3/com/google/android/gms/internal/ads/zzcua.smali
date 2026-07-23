.class final Lcom/google/android/gms/internal/ads/zzcua;
.super Lcom/google/android/gms/internal/ads/zzctx;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Landroid/view/View;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfis;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcwd;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdor;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdjo;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzk:Ljava/util/concurrent/Executor;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfis;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcwd;Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzdjo;Lcom/google/android/gms/internal/ads/zzika;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzctx;-><init>(Lcom/google/android/gms/internal/ads/zzcwe;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzf:Lcom/google/android/gms/internal/ads/zzfis;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzg:Lcom/google/android/gms/internal/ads/zzcwd;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzh:Lcom/google/android/gms/internal/ads/zzdor;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzi:Lcom/google/android/gms/internal/ads/zzdjo;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzj:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzk:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Landroid/view/View;

    return-object v0
.end method

.method public final zzb(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzclv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaf(Lcom/google/android/gms/internal/ads/zzclv;)V

    .line 2
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 3
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    :cond_0
    return-void
.end method

.method public final zzc()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzg:Lcom/google/android/gms/internal/ads/zzcwd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcwd;->zza()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfjr; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfis;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjq;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfis;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzac:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfir;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "FirstParty"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Landroid/view/View;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfis;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzfis;-><init>(IIZ)V

    return-object v1

    .line 4
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzr:Ljava/util/List;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfis;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzfis;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzf:Lcom/google/android/gms/internal/ads/zzfis;

    return-object v0
.end method

.method public final zzg()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzje:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zza:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzc:I

    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zza:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzd:I

    return v0
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzi:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zza()V

    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzctz;-><init>(Lcom/google/android/gms/internal/ads/zzcua;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzk:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzj()V

    return-void
.end method

.method final synthetic zzk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzh:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdor;->zzd()Lcom/google/android/gms/internal/ads/zzbmd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzj:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzbx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmd;->zze(Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
