.class public final Lcom/google/android/gms/internal/ads/zzdoc;
.super Lcom/google/android/gms/internal/ads/zzcwf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zzc:Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field private final zzA:Ljava/util/List;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdoh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdop;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdpg;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdom;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzika;

.field private zzo:Lcom/google/android/gms/internal/ads/zzdqe;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private final zzt:Lcom/google/android/gms/internal/ads/zzccn;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzw:Landroid/content/Context;

.field private final zzx:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzy:Lcom/google/android/gms/internal/ads/zzers;

.field private final zzz:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "2011"

    const-string v5, "2007"

    const-string v0, "3010"

    const-string v1, "3008"

    const-string v2, "1005"

    const-string v3, "1009"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzguf;->zzn(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdoh;Lcom/google/android/gms/internal/ads/zzdop;Lcom/google/android/gms/internal/ads/zzdpg;Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzccn;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzers;Lcom/google/android/gms/internal/ads/zzbdh;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzcwf;-><init>(Lcom/google/android/gms/internal/ads/zzcwe;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzg:Lcom/google/android/gms/internal/ads/zzdpg;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzh:Lcom/google/android/gms/internal/ads/zzdom;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzi:Lcom/google/android/gms/internal/ads/zzdor;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzj:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzk:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzl:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzm:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzn:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzt:Lcom/google/android/gms/internal/ads/zzccn;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzu:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzw:Landroid/content/Context;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzx:Lcom/google/android/gms/internal/ads/zzdoe;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzy:Lcom/google/android/gms/internal/ads/zzers;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzz:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzA:Ljava/util/List;

    return-void
.end method

.method public static zzI(Landroid/view/View;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmb:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzA(Landroid/view/View;)J

    move-result-wide v3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 5
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmc:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v5, p0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private final declared-synchronized zzac(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzp:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzg:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zza(Lcom/google/android/gms/internal/ads/zzdqe;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdE()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzk()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzl()Ljava/util/Map;

    move-result-object v4

    move-object v6, p1

    move-object v5, p1

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdop;->zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzdq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzu:Lcom/google/android/gms/internal/ads/zzazh;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazh;->zzb()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdE()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzazc;->zzh(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzak:Z

    if-nez v0, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzaj:Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 19
    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzj()Ljava/util/Map;

    move-result-object v1

    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 13
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzz:Ljava/util/Map;

    .line 15
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzw:Landroid/content/Context;

    .line 17
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzA:Ljava/util/List;

    .line 18
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnr;

    .line 19
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdnr;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdg;->zza(Lcom/google/android/gms/internal/ads/zzbde;)V

    goto :goto_1

    .line 9
    :cond_5
    :goto_3
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdqe;->zzh()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdqe;->zzh()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzt:Lcom/google/android/gms/internal/ads/zzccn;

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zza(Lcom/google/android/gms/internal/ads/zzbde;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzad(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdE()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzj()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdop;->zzb(Landroid/view/View;Ljava/util/Map;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdA()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdA()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdA()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzh()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzh()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzt:Lcom/google/android/gms/internal/ads/zzccn;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzb(Lcom/google/android/gms/internal/ads/zzbde;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    return-void
.end method

.method private final declared-synchronized zzae(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzg:Lcom/google/android/gms/internal/ads/zzdpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzc(Lcom/google/android/gms/internal/ads/zzdqe;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 3
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzw(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzaf(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzr:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdoc;->zzag(Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzpc:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    .line 5
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    .line 9
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdop;->zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzpd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzI(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    .line 14
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdop;->zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzr:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzpe:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    new-instance v1, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    .line 20
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v5, v1

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v1, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v6

    int-to-double v0, v1

    int-to-double v5, v5

    mul-double/2addr v0, v3

    cmpl-double v0, v5, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    .line 24
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdop;->zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzr:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzag(Ljava/util/Map;)Landroid/view/View;
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1
    check-cast v3, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 0
    :cond_2
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzah()Landroid/widget/ImageView$ScaleType;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Ad should be associated with an ad view before calling getMediaviewScaleType()"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzo()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpg;->zza:Landroid/widget/ImageView$ScaleType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private final zzai(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzgq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "Google"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzX()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdns;

    .line 3
    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdns;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdoc;->zzL(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzekb;

    return-void
.end method

.method private final zzaj(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzekb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzW()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzh:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdom;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzekb;->zza()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(Lcom/google/android/gms/internal/ads/zzfsj;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized zzA(Lcom/google/android/gms/ads/internal/client/zzdj;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzr(Lcom/google/android/gms/ads/internal/client/zzdj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzB(Lcom/google/android/gms/ads/internal/client/zzdf;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzs(Lcom/google/android/gms/ads/internal/client/zzdf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzC()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzD()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdpa;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdnx;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdnx;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Z)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzE(Landroid/view/View;I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmX:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    if-nez v0, :cond_1

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdpa;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdny;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdny;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Landroid/view/View;ZI)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzF()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzh()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzG()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzu()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzH()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzv()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzJ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzh:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdom;->zzc()Z

    move-result v0

    return v0
.end method

.method public final zzK()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzh:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdom;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzL(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzekb;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzh:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdom;->zzd()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzW()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzT()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v5

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Omid display and video webview are null. Skipping initialization."

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdom;->zzg()Lcom/google/android/gms/internal/ads/zzfjn;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdom;->zzg()Lcom/google/android/gms/internal/ads/zzfjn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    if-eq v6, v8, :cond_5

    if-eq v1, v8, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const-string v1, "UNKNOWN"

    goto :goto_1

    .line 6
    :cond_3
    const-string v1, "DISPLAY"

    goto :goto_1

    :cond_4
    const-string v1, "VIDEO"

    .line 4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x31

    .line 5
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown omid media type: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Not initializing Omid."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_5
    if-eqz v4, :cond_6

    move v1, v7

    move v7, v8

    goto :goto_2

    .line 30
    :cond_6
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Omid media type was display but there was no display webview."

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_7
    if-eqz v5, :cond_11

    move v1, v8

    :goto_2
    if-eqz v7, :cond_8

    move-object v14, v3

    goto :goto_3

    .line 10
    :cond_8
    const-string v4, "javascript"

    move-object v14, v4

    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_10

    .line 6
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzw:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/ads/zzejw;->zza(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 12
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Failed to initialize omid in InternalNativeAd"

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_9
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v7, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v6, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 14
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/2addr v9, v10

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_a

    .line 15
    sget-object v6, Lcom/google/android/gms/internal/ads/zzejx;->zzc:Lcom/google/android/gms/internal/ads/zzejx;

    .line 16
    sget-object v7, Lcom/google/android/gms/internal/ads/zzejy;->zzb:Lcom/google/android/gms/internal/ads/zzejy;

    :goto_4
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_5

    .line 17
    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/ads/zzejx;->zzb:Lcom/google/android/gms/internal/ads/zzejx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzx()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_b

    .line 18
    sget-object v7, Lcom/google/android/gms/internal/ads/zzejy;->zzd:Lcom/google/android/gms/internal/ads/zzejy;

    goto :goto_4

    .line 19
    :cond_b
    sget-object v7, Lcom/google/android/gms/internal/ads/zzejy;->zzc:Lcom/google/android/gms/internal/ads/zzejy;

    goto :goto_4

    .line 20
    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v9

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcjl;->zzD()Landroid/webkit/WebView;

    move-result-object v11

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcwf;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    .line 21
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfir;->zzal:Ljava/lang/String;

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v15, p1

    move-object/from16 v18, v6

    .line 22
    invoke-interface/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzejw;->zzd(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzejy;Lcom/google/android/gms/internal/ads/zzejx;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzekb;

    move-result-object v6

    if-nez v6, :cond_c

    .line 23
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Failed to create omid session in InternalNativeAd"

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    .line 25
    :cond_c
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzdoh;->zzq(Lcom/google/android/gms/internal/ads/zzekb;)V

    .line 26
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zzcjl;->zzak(Lcom/google/android/gms/internal/ads/zzekb;)V

    if-eqz v1, :cond_e

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzekb;->zza()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v1

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v2

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzejw;->zzh(Lcom/google/android/gms/internal/ads/zzfsj;Landroid/view/View;)V

    :cond_d
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdoc;->zzs:Z

    :cond_e
    if-eqz p2, :cond_f

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzekb;->zza()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzejw;->zze(Lcom/google/android/gms/internal/ads/zzfsj;)V

    .line 29
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_f
    return-object v6

    .line 9
    :cond_10
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Webview is null in InternalNativeAd"

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    .line 7
    :cond_11
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Omid media type was video but there was no video webview."

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    :cond_12
    :goto_6
    return-object v3
.end method

.method public final zzM()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzh:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdom;->zzd()Z

    move-result v0

    return v0
.end method

.method public final zzN(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzgq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzx()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzY()Lcom/google/android/gms/internal/ads/zzcen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnt;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzZ()Lcom/google/android/gms/internal/ads/zzekb;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaj(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzekb;)V

    return-void
.end method

.method public final zzO(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzZ()Lcom/google/android/gms/internal/ads/zzekb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzh:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdom;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekb;->zza()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzejw;->zzg(Lcom/google/android/gms/internal/ads/zzfsj;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zzP()Lcom/google/android/gms/internal/ads/zzdoe;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzx:Lcom/google/android/gms/internal/ads/zzdoe;

    return-object v0
.end method

.method public final declared-synchronized zzQ(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzy:Lcom/google/android/gms/internal/ads/zzers;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzers;->zza(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzR(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzT()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v0

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Video webview is null"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdnz;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdnz;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;Lorg/json/JSONObject;)V

    .line 6
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :goto_1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Error reading event signals"

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzS()V
    .locals 5

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzx()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Google"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    :try_start_1
    const-string v0, "Wrong native template id!"

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzi:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdor;->zze()Lcom/google/android/gms/internal/ads/zzbrb;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzm:Lcom/google/android/gms/internal/ads/zzika;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrb;->zze(Lcom/google/android/gms/internal/ads/zzbqv;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzi:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdor;->zzc()Lcom/google/android/gms/internal/ads/zzbmg;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzai(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzl:Lcom/google/android/gms/internal/ads/zzika;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmg;->zze(Lcom/google/android/gms/internal/ads/zzbmm;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzi:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzS()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdor;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzblz;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzT()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzL(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzekb;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzn:Lcom/google/android/gms/internal/ads/zzika;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzblm;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzblz;->zze(Lcom/google/android/gms/internal/ads/zzblm;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzi:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdor;->zzb()Lcom/google/android/gms/internal/ads/zzblq;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzai(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzk:Lcom/google/android/gms/internal/ads/zzika;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzblh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzblq;->zze(Lcom/google/android/gms/internal/ads/zzblh;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzi:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdor;->zza()Lcom/google/android/gms/internal/ads/zzblt;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 10
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzai(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzj:Lcom/google/android/gms/internal/ads/zzika;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzblj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzblt;->zze(Lcom/google/android/gms/internal/ads/zzblj;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    .line 14
    :goto_0
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 15
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzT()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzae()V

    return-void
.end method

.method final synthetic zzU(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzac(Lcom/google/android/gms/internal/ads/zzdqe;)V

    return-void
.end method

.method final synthetic zzV(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzad(Lcom/google/android/gms/internal/ads/zzdqe;)V

    return-void
.end method

.method final synthetic zzW(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdE()Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzj()Ljava/util/Map;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzk()Ljava/util/Map;

    move-result-object v4

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v5, p1

    .line 7
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdop;->zzf(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    return-void
.end method

.method final synthetic zzX(Landroid/view/View;ZI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzdE()Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzj()Ljava/util/Map;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zzk()Ljava/util/Map;

    move-result-object v4

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    move-object v1, p1

    move v5, p2

    move v7, p3

    .line 7
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdop;->zzf(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    return-void
.end method

.method final synthetic zzY(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzekb;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaj(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzekb;)V

    return-void
.end method

.method final synthetic zzZ()Lcom/google/android/gms/internal/ads/zzdoh;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    return-object v0
.end method

.method public final declared-synchronized zza(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzaa()Lcom/google/android/gms/internal/ads/zzdqe;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    return-object v0
.end method

.method final synthetic zzab()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzz:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized zzb()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzc(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zze(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzp:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnu;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zze(Landroid/os/Bundle;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzz(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzq:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzf(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzk(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzco:Lcom/google/android/gms/internal/ads/zzbgv;

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

    .line 3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfyn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdnv;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Lcom/google/android/gms/internal/ads/zzdqe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzac(Lcom/google/android/gms/internal/ads/zzdqe;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzco:Lcom/google/android/gms/internal/ads/zzbgv;

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

    .line 3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfyn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdnw;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;Lcom/google/android/gms/internal/ads/zzdqe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzad(Lcom/google/android/gms/internal/ads/zzdqe;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzi(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzg:Lcom/google/android/gms/internal/ads/zzdpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzo:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzb(Lcom/google/android/gms/internal/ads/zzdqe;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 3
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdop;->zzc(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzs:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzT()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzT()Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p3, "onSdkAdUserInteractionClick"

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzj()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdoa;-><init>(Lcom/google/android/gms/internal/ads/zzdoc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzd:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoh;->zzx()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 2
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdob;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>(Lcom/google/android/gms/internal/ads/zzdop;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcwf;->zzj()V

    return-void
.end method

.method public final declared-synchronized zzk(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdop;->zzj(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzu(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzq:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaf(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcq:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwf;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzak:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzz:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_5

    sget-object p4, Lcom/google/android/gms/internal/ads/zzbhe;->zzeL:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p4

    .line 7
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzI(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzae(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 12
    :cond_5
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzae(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdoc;->zzaf(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzv(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 2
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzl(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzw(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoc;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    .line 2
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzm(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzx(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzo(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzy(Lcom/google/android/gms/internal/ads/zzbmj;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdop;->zzp(Lcom/google/android/gms/internal/ads/zzbmj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzz()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoc;->zzf:Lcom/google/android/gms/internal/ads/zzdop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdop;->zzq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
