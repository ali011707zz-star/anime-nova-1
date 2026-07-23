.class public final Lcom/google/android/gms/internal/ads/zzdsm;
.super Lcom/google/android/gms/internal/ads/zzbqu;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzbkc;


# instance fields
.field private zza:Landroid/view/View;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzed;

.field private zzc:Lcom/google/android/gms/internal/ads/zzdoc;

.field private zzd:Z

.field private zze:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdoc;Lcom/google/android/gms/internal/ads/zzdoh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqu;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzJ()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzy()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzb:Lcom/google/android/gms/ads/internal/client/zzed;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzc:Lcom/google/android/gms/internal/ads/zzdoc;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zze:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzT()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzT()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzax(Lcom/google/android/gms/internal/ads/zzbkc;)V

    :cond_0
    return-void
.end method

.method private final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final zzh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzc:Lcom/google/android/gms/internal/ads/zzdoc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzI(Landroid/view/View;)Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzu(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method private static final zzi(Lcom/google/android/gms/internal/ads/zzbqy;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqy;->zzf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "#007 Could not call remote method."

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsm;->zzh()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsm;->zzh()V

    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfyn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdsl;-><init>(Lcom/google/android/gms/internal/ads/zzdsm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    .line 1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzd:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzb:Lcom/google/android/gms/ads/internal/client/zzed;

    return-object v0
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsm;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzc:Lcom/google/android/gms/internal/ads/zzdoc;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzc:Lcom/google/android/gms/internal/ads/zzdoc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzb:Lcom/google/android/gms/ads/internal/client/zzed;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzd:Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqy;)V
    .locals 3

    .line 1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzd:Z

    if-eqz v0, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Instream ad can not be shown after destroy()."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdsm;->zzi(Lcom/google/android/gms/internal/ads/zzbqy;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzb:Lcom/google/android/gms/ads/internal/client/zzed;

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zze:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 8
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Instream ad should not be used again."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 10
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zzi(Lcom/google/android/gms/internal/ads/zzbqy;I)V

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zze:Z

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsm;->zzg()V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 13
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzC()Lcom/google/android/gms/internal/ads/zzcev;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcev;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzC()Lcom/google/android/gms/internal/ads/zzcev;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zza:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcev;->zzb(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdsm;->zzh()V

    .line 17
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbqy;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "#007 Could not call remote method."

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 4
    const-string p1, "can not get video view."

    goto :goto_1

    .line 7
    :cond_4
    const-string p1, "can not get video controller."

    .line 5
    :goto_1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Instream internal error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdsm;->zzi(Lcom/google/android/gms/internal/ads/zzbqy;I)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsk;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsk;-><init>(Lcom/google/android/gms/internal/ads/zzdsm;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsm;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbqy;)V

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbkp;
    .locals 3

    .line 1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsm;->zzc:Lcom/google/android/gms/internal/ads/zzdoc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzP()Lcom/google/android/gms/internal/ads/zzdoe;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzP()Lcom/google/android/gms/internal/ads/zzdoe;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoe;->zza()Lcom/google/android/gms/internal/ads/zzbkp;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method
