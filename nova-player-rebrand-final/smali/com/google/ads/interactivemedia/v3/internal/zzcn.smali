.class public final Lcom/google/ads/interactivemedia/v3/internal/zzcn;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzcn;


# instance fields
.field private zzb:Ljava/lang/ref/WeakReference;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcn;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzc:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzd:Z

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzcn;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzcn;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzb:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzcm;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzcm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzcn;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "keyguard"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzc:Z

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzd(ZZ)V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzd:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd(ZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1
    :goto_0
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzd:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzc:Z

    if-eqz v3, :cond_3

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-ne v2, v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzcd;->zze()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;

    .line 2
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/omid/library/adsession/zze;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzct;

    move-result-object v3

    if-nez p2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v0

    :goto_3
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzg(Z)V

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method final synthetic zze(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzc:Z

    return-void
.end method

.method final synthetic zzf()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzcn;->zzd:Z

    return v0
.end method
