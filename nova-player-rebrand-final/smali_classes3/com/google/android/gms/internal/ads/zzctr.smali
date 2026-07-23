.class public final Lcom/google/android/gms/internal/ads/zzctr;
.super Lcom/google/android/gms/internal/ads/zzcwf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final zzd:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzctf;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdmc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdiq;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdbs;

.field private final zzj:Z

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcdz;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdxz;

.field private zzm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjl;ILcom/google/android/gms/internal/ads/zzctf;Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzdbs;Lcom/google/android/gms/internal/ads/zzcdz;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwf;-><init>(Lcom/google/android/gms/internal/ads/zzcwe;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzm:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctr;->zze:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzf:Lcom/google/android/gms/internal/ads/zzctf;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzg:Lcom/google/android/gms/internal/ads/zzdmc;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzh:Lcom/google/android/gms/internal/ads/zzdiq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzi:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzgu:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzj:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzk:Lcom/google/android/gms/internal/ads/zzcdz;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzl:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzber;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzay(Lcom/google/android/gms/internal/ads/zzber;)V

    :cond_0
    return-void
.end method

.method public final zzb(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbfe;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zze:Landroid/content/Context;

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzj:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzh:Lcom/google/android/gms/internal/ads/zzdiq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiq;->zza()V

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzg:Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdmc;->zzb()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzT(Lcom/google/android/gms/internal/ads/zzfir;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzpb:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzl:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzdxz;)V

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzbi:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzi:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdbs;->zze()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzbj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 28
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfvr;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/util/zzbq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfvr;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zza:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfvr;->zza(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zznq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v1, :cond_5

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzar:Z

    if-eqz v3, :cond_5

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzas:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzk:Lcom/google/android/gms/internal/ads/zzcdz;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdz;->zzj()I

    move-result v3

    if-ne v1, v3, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "The app open consent form has been shown."

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzi:Lcom/google/android/gms/internal/ads/zzdbs;

    const/16 p2, 0xc

    const-string p3, "The consent form has already been shown."

    .line 22
    invoke-static {p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbs;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    .line 12
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzm:Z

    if-eqz v1, :cond_6

    .line 13
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "App open interstitial ad is already visible."

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzi:Lcom/google/android/gms/internal/ads/zzdbs;

    const/16 v3, 0xa

    .line 15
    invoke-static {v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdbs;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzm:Z

    if-nez v1, :cond_8

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzi:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 17
    invoke-interface {v0, p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzh:Lcom/google/android/gms/internal/ads/zzdiq;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdiq;->zzb()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdmb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzm:Z

    return-void

    .line 23
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzi:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 19
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdbs;->zzd(Lcom/google/android/gms/internal/ads/zzdmb;)V

    :cond_8
    return-void
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzd:I

    return v0
.end method

.method public final zzd()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzc:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->destroy()V

    :cond_0
    return-void
.end method

.method public final zze(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->zzf:Lcom/google/android/gms/internal/ads/zzctf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzctf;->zza(JI)V

    return-void
.end method
