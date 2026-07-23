.class public final Lcom/google/android/gms/ads/internal/client/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/client/zzk;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzi;

.field private final zzc:Lcom/google/android/gms/ads/internal/client/zzff;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbmo;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbxp;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbmp;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbyr;

.field private final zzh:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzk;Lcom/google/android/gms/ads/internal/client/zzi;Lcom/google/android/gms/ads/internal/client/zzff;Lcom/google/android/gms/internal/ads/zzbmo;Lcom/google/android/gms/internal/ads/zzcbl;Lcom/google/android/gms/internal/ads/zzbxp;Lcom/google/android/gms/internal/ads/zzbmp;Lcom/google/android/gms/ads/internal/client/zzl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zza:Lcom/google/android/gms/ads/internal/client/zzk;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzb:Lcom/google/android/gms/ads/internal/client/zzi;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzc:Lcom/google/android/gms/ads/internal/client/zzff;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzd:Lcom/google/android/gms/internal/ads/zzbmo;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zze:Lcom/google/android/gms/internal/ads/zzbxp;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzf:Lcom/google/android/gms/internal/ads/zzbmp;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzh:Lcom/google/android/gms/ads/internal/client/zzl;

    return-void
.end method

.method static synthetic zzm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 2
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 3
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzg()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzam;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzam;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbx;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzao;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbx;

    return-object p1
.end method

.method public final zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/ads/internal/client/zzbt;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzaq;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbt;

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/ads/internal/client/zzck;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzas;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzas;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzck;

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbkw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/client/zzaw;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkw;

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/internal/ads/zzcaz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzaa;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzaa;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcaz;

    return-object p1
.end method

.method public final zzh(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbxs;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzac;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3
    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 6
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbxs;

    return-object p1
.end method

.method public final zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/ads/internal/client/zzdw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzdw;

    return-object p1
.end method

.method public final zzj(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/internal/ads/zzcdd;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzag;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzag;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcdd;

    return-object p1
.end method

.method public final zzk(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/internal/ads/zzbxl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzai;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzai;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzba;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbxl;

    return-object p1
.end method

.method final synthetic zzn()Lcom/google/android/gms/ads/internal/client/zzk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zza:Lcom/google/android/gms/ads/internal/client/zzk;

    return-object v0
.end method

.method final synthetic zzo()Lcom/google/android/gms/ads/internal/client/zzi;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzb:Lcom/google/android/gms/ads/internal/client/zzi;

    return-object v0
.end method

.method final synthetic zzp()Lcom/google/android/gms/ads/internal/client/zzff;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzc:Lcom/google/android/gms/ads/internal/client/zzff;

    return-object v0
.end method

.method final synthetic zzq()Lcom/google/android/gms/internal/ads/zzbmo;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzd:Lcom/google/android/gms/internal/ads/zzbmo;

    return-object v0
.end method

.method final synthetic zzr()Lcom/google/android/gms/internal/ads/zzbxp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zze:Lcom/google/android/gms/internal/ads/zzbxp;

    return-object v0
.end method

.method final synthetic zzt()Lcom/google/android/gms/internal/ads/zzbyr;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzg:Lcom/google/android/gms/internal/ads/zzbyr;

    return-object v0
.end method

.method final synthetic zzu(Lcom/google/android/gms/internal/ads/zzbyr;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzg:Lcom/google/android/gms/internal/ads/zzbyr;

    return-void
.end method

.method final synthetic zzv()Lcom/google/android/gms/ads/internal/client/zzl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->zzh:Lcom/google/android/gms/ads/internal/client/zzl;

    return-object v0
.end method
