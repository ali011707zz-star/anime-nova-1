.class public final Lcom/google/android/gms/internal/ads/zzbro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrg;
.implements Lcom/google/android/gms/internal/ads/zzbre;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/zza;)V
    .locals 18

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzd()Lcom/google/android/gms/internal/ads/zzckb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzclv;->zzb()Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgd;->zza()Lcom/google/android/gms/internal/ads/zzbgd;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 3
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzckb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzclv;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbil;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzfjo;Lcom/google/android/gms/internal/ads/zzdxz;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private static final zzs(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "runOnUiThread > the UI thread is the main thread, the runnable will be run now"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string v0, "runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfyn;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "runOnUiThread > the runnable could not be placed to the message queue"

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "invokeJavascript on adWebView from js"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbrn;-><init>(Lcom/google/android/gms/internal/ads/zzbro;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbro;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zzc(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zzd(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic zze(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbre$-CC;->$default$zze(Lcom/google/android/gms/internal/ads/zzbre;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "loadJavascript on adWebView from path: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbrj;-><init>(Lcom/google/android/gms/internal/ads/zzbro;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbro;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "loadHtmlWrapper on adWebView from path: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbrl;-><init>(Lcom/google/android/gms/internal/ads/zzbro;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbro;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "loadHtml on adWebView from html"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbrk;-><init>(Lcom/google/android/gms/internal/ads/zzbro;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbro;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbrf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v0

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbri;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbri;-><init>(Lcom/google/android/gms/internal/ads/zzbrf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzclj;->zzH(Lcom/google/android/gms/internal/ads/zzcli;)V

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    :cond_0
    return-void
.end method

.method public final zzk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzX()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzbsn;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbsn;-><init>(Lcom/google/android/gms/internal/ads/zzbsm;)V

    return-object v0
.end method

.method public final zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbrh;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzbrh;-><init>(Lcom/google/android/gms/internal/ads/zzbro;Lcom/google/android/gms/internal/ads/zzboh;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    :cond_0
    return-void
.end method

.method public final zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbrm;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzbrm;-><init>(Lcom/google/android/gms/internal/ads/zzboh;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzad(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_0
    return-void
.end method

.method final synthetic zzo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrp;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzp(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjl;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzq(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjl;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzr(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbro;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjl;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
