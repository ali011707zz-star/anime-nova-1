.class public final Lcom/google/android/gms/internal/ads/zzdpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzduv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdtk;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzctc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdop;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzduv;Lcom/google/android/gms/internal/ads/zzdtk;Lcom/google/android/gms/internal/ads/zzctc;Lcom/google/android/gms/internal/ads/zzdop;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zza:Lcom/google/android/gms/internal/ads/zzduv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzc:Lcom/google/android/gms/internal/ads/zzctc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzd:Lcom/google/android/gms/internal/ads/zzdop;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zza:Lcom/google/android/gms/internal/ads/zzduv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzb()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzduv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdpt;-><init>(Lcom/google/android/gms/internal/ads/zzdpu;)V

    const-string v2, "/sendMessageToSdk"

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdpo;-><init>(Lcom/google/android/gms/internal/ads/zzdpu;)V

    const-string v2, "/adMuted"

    .line 5
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdpp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdpp;-><init>(Lcom/google/android/gms/internal/ads/zzdpu;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string v4, "/loadHtml"

    invoke-virtual {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzh(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Lcom/google/android/gms/internal/ads/zzdpu;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzh(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdpr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdpr;-><init>(Lcom/google/android/gms/internal/ads/zzdpu;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzh(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzd:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzt()V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/util/Map;)V
    .locals 0

    .line 1
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Showing native ads overlay."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzc:Lcom/google/android/gms/internal/ads/zzctc;

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzctc;->zze(Z)V

    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/util/Map;)V
    .locals 0

    .line 1
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Hiding native ads overlay."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzc:Lcom/google/android/gms/internal/ads/zzctc;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzctc;->zze(Z)V

    return-void
.end method

.method final synthetic zzf(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "messageType"

    const-string p4, "htmlLoaded"

    .line 2
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p3, "id"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zzb:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string p3, "sendMessageToNativeJs"

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
