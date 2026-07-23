.class public final Lcom/google/android/gms/internal/ads/zzaaa;
.super Lcom/google/android/gms/internal/ads/zzaag;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmm;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgvz;


# instance fields
.field public final zza:Landroid/content/Context;

.field private final zzd:Ljava/lang/Object;

.field private zze:Lcom/google/android/gms/internal/ads/zzzl;

.field private zzf:Ljava/lang/Thread;

.field private zzg:Lcom/google/android/gms/internal/ads/zzzp;

.field private zzh:Lcom/google/android/gms/internal/ads/zzd;

.field private zzi:Ljava/lang/Boolean;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzyt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzzg;->zza:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvz;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaaa;->zzc:Lcom/google/android/gms/internal/ads/zzgvz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyt;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzzl;->zzJ:Lcom/google/android/gms/internal/ads/zzzl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaag;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzd:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzj:Lcom/google/android/gms/internal/ads/zzyt;

    invoke-static {v1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzk;-><init>(Lcom/google/android/gms/internal/ads/zzzl;[B)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzk;->zzx(Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzzk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzl;

    .line 6
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(Lcom/google/android/gms/internal/ads/zzzk;[B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    .line 7
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    .line 8
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected static zzi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static zzj(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaa;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 6
    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 5
    aget-object p0, p0, v0

    .line 7
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 8
    aget-object p1, p1, v0

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method

.method static synthetic zzm(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzguf;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 2
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzv;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzx;->zzb:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method

.method static synthetic zzo()Lcom/google/android/gms/internal/ads/zzgvz;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaaa;->zzc:Lcom/google/android/gms/internal/ads/zzgvz;

    return-object v0
.end method

.method private final zzu()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzp;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaj;->zzs()V

    :cond_1
    return-void

    .line 2
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static zzv(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzbl;Ljava/util/Map;)V
    .locals 2

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    if-ge p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbl;->zzH:Lcom/google/android/gms/internal/ads/zzgui;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgui;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final zzw(ILcom/google/android/gms/internal/ads/zzaaf;[[[ILcom/google/android/gms/internal/ads/zzzr;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaaf;->zza(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaaf;->zzb(I)Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v5

    const/4 v7, 0x0

    .line 4
    :goto_1
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    if-ge v7, v8, :cond_6

    .line 5
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v8

    .line 6
    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    .line 7
    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzzr;->zza(ILcom/google/android/gms/internal/ads/zzbg;[I)Ljava/util/List;

    move-result-object v9

    .line 8
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    add-int/lit8 v13, v12, 0x1

    .line 9
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzzs;

    .line 10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzzs;->zza()I

    move-result v15

    .line 11
    aget-boolean v12, v11, v12

    if-nez v12, :cond_4

    if-nez v15, :cond_0

    goto :goto_5

    :cond_0
    const/4 v12, 0x1

    if-ne v15, v12, :cond_1

    .line 12
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v12

    goto :goto_4

    .line 20
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v12

    move v12, v13

    :goto_3
    if-ge v12, v8, :cond_3

    .line 15
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzs;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzzs;->zza()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 17
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzzs;->zzc(Lcom/google/android/gms/internal/ads/zzzs;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    aput-boolean v16, v11, v12

    :cond_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object v12, v15

    .line 20
    :goto_4
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_5
    move-object/from16 v0, p1

    move v12, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    .line 21
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    .line 22
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 24
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzs;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzzs;->zzc:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzs;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaab;

    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzzs;->zzb:Lcom/google/android/gms/internal/ads/zzbg;

    .line 28
    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/internal/ads/zzbg;[II)V

    .line 27
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzzs;->zza:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzml;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzY:Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzf:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "DefaultTrackSelector is accessed on the wrong thread."

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzj(ZLjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzp;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    .line 5
    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzaaj;->zzb()V

    return-void

    .line 3
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzzl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzu()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(Lcom/google/android/gms/internal/ads/zzzk;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbl;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaj;->zzs()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzmm;
    .locals 0

    .line 0
    return-object p0
.end method

.method protected final zzh(Lcom/google/android/gms/internal/ads/zzaaf;[[[I[ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzbf;)Landroid/util/Pair;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzd:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzf:Ljava/lang/Thread;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zze:Lcom/google/android/gms/internal/ads/zzzl;

    .line 2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzi:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzM(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzi:Ljava/lang/Boolean;

    .line 4
    :cond_0
    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x20

    if-lt v4, v6, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzzp;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzi:Ljava/lang/Boolean;

    .line 5
    invoke-direct {v6, v4, v1, v7}, Lcom/google/android/gms/internal/ads/zzzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaaa;Ljava/lang/Boolean;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    :cond_1
    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v4, :cond_3

    .line 6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaaf;->zza(I)I

    move-result v10

    if-ne v10, v4, :cond_2

    .line 7
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaaf;->zzb(I)Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    if-lez v10, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzzc;

    invoke-direct {v10, v1, v5, v8, v3}, Lcom/google/android/gms/internal/ads/zzzc;-><init>(Lcom/google/android/gms/internal/ads/zzaaa;Lcom/google/android/gms/internal/ads/zzzl;Z[I)V

    sget-object v8, Lcom/google/android/gms/internal/ads/zzyy;->zza:Lcom/google/android/gms/internal/ads/zzyy;

    .line 8
    invoke-static {v9, v0, v2, v10, v8}, Lcom/google/android/gms/internal/ads/zzaaa;->zzw(ILcom/google/android/gms/internal/ads/zzaaf;[[[ILcom/google/android/gms/internal/ads/zzzr;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 9
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaab;

    aput-object v11, v6, v10

    :cond_4
    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    .line 10
    :cond_5
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v8

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaab;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaab;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaab;->zzb:[I

    aget v8, v8, v7

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    .line 11
    :goto_2
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzw:Lcom/google/android/gms/internal/ads/zzbj;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzbj;->zzb:I

    .line 12
    iget-boolean v11, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzk:Z

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Landroid/content/Context;

    if-eqz v11, :cond_6

    .line 13
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzO(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v11

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    new-instance v12, Lcom/google/android/gms/internal/ads/zzzh;

    invoke-direct {v12, v5, v8, v3, v11}, Lcom/google/android/gms/internal/ads/zzzh;-><init>(Lcom/google/android/gms/internal/ads/zzzl;Ljava/lang/String;[ILandroid/graphics/Point;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzzb;->zza:Lcom/google/android/gms/internal/ads/zzzb;

    .line 14
    invoke-static {v4, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzaaa;->zzw(ILcom/google/android/gms/internal/ads/zzaaf;[[[ILcom/google/android/gms/internal/ads/zzzr;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    const/4 v11, 0x4

    if-nez v3, :cond_7

    .line 15
    new-instance v12, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Lcom/google/android/gms/internal/ads/zzzl;)V

    sget-object v13, Lcom/google/android/gms/internal/ads/zzyz;->zza:Lcom/google/android/gms/internal/ads/zzyz;

    .line 16
    invoke-static {v11, v0, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzaaa;->zzw(ILcom/google/android/gms/internal/ads/zzaaf;[[[ILcom/google/android/gms/internal/ads/zzzr;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_8

    .line 17
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaab;

    aput-object v12, v6, v3

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    .line 18
    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaab;

    aput-object v3, v6, v12

    .line 19
    :cond_9
    :goto_5
    iget-boolean v3, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzB:Z

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Landroid/content/Context;

    if-nez v3, :cond_b

    :cond_a
    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    .line 68
    :cond_b
    const-string v12, "captioning"

    .line 20
    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager;

    if-eqz v3, :cond_a

    .line 21
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_6

    .line 22
    :cond_c
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_6

    .line 23
    :cond_d
    sget-object v12, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 24
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 19
    :goto_7
    new-instance v12, Lcom/google/android/gms/internal/ads/zzzd;

    invoke-direct {v12, v5, v8, v3}, Lcom/google/android/gms/internal/ads/zzzd;-><init>(Lcom/google/android/gms/internal/ads/zzzl;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzza;->zza:Lcom/google/android/gms/internal/ads/zzza;

    const/4 v8, 0x3

    .line 25
    invoke-static {v8, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzaaa;->zzw(ILcom/google/android/gms/internal/ads/zzaaf;[[[ILcom/google/android/gms/internal/ads/zzzr;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 26
    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaab;

    aput-object v3, v6, v12

    :cond_e
    move v3, v7

    :goto_8
    if-ge v3, v4, :cond_15

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaaf;->zza(I)I

    move-result v12

    if-eq v12, v4, :cond_14

    if-eq v12, v9, :cond_14

    if-eq v12, v8, :cond_14

    if-eq v12, v11, :cond_14

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaaf;->zzb(I)Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v12

    aget-object v13, v2, v3

    move v14, v7

    move/from16 v16, v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 29
    :goto_9
    iget v8, v12, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    if-ge v14, v8, :cond_12

    .line 30
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzyn;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v8

    .line 31
    aget-object v18, v13, v14

    move v11, v7

    move-object/from16 v10, v17

    const/16 p4, 0x0

    .line 32
    :goto_a
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v11, v9, :cond_11

    .line 33
    aget v9, v18, v11

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    invoke-static {v9, v4}, Lcom/google/android/gms/internal/ads/zzmn$-CC;->zzaa(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 34
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    new-instance v9, Lcom/google/android/gms/internal/ads/zzzj;

    .line 35
    aget v7, v18, v11

    invoke-direct {v9, v4, v7}, Lcom/google/android/gms/internal/ads/zzzj;-><init>(Lcom/google/android/gms/internal/ads/zzv;I)V

    if-eqz v10, :cond_f

    .line 36
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Lcom/google/android/gms/internal/ads/zzzj;)I

    move-result v4

    if-lez v4, :cond_10

    :cond_f
    move-object v15, v8

    move-object v10, v9

    move/from16 v16, v11

    :cond_10
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto :goto_a

    :cond_11
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v10

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto :goto_9

    :cond_12
    const/16 p4, 0x0

    if-nez v15, :cond_13

    move-object/from16 v4, p4

    goto :goto_b

    .line 38
    :cond_13
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaab;

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v7

    const/4 v8, 0x0

    .line 37
    invoke-direct {v4, v15, v7, v8}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/internal/ads/zzbg;[II)V

    .line 38
    :goto_b
    aput-object v4, v6, v3

    goto :goto_c

    :cond_14
    const/16 p4, 0x0

    :goto_c
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto :goto_8

    :cond_15
    const/16 p4, 0x0

    .line 37
    new-instance v2, Ljava/util/HashMap;

    .line 39
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_16

    .line 40
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaaf;->zzb(I)Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v4

    .line 41
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzaaa;->zzv(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzbl;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaaf;->zze()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v4

    .line 42
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzaaa;->zzv(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzbl;Ljava/util/Map;)V

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_17

    .line 43
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaaf;->zza(I)I

    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_17
    const/4 v8, 0x0

    :goto_f
    if-ge v8, v3, :cond_19

    .line 45
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaaf;->zzb(I)Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v2

    .line 46
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzzl;->zzb(ILcom/google/android/gms/internal/ads/zzyn;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_10

    .line 47
    :cond_18
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzzl;->zzc(ILcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/internal/ads/zzzm;

    .line 50
    aput-object p4, v6, v8

    :goto_10
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_f

    :cond_19
    const/4 v8, 0x0

    :goto_11
    if-ge v8, v3, :cond_1c

    .line 51
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaaf;->zza(I)I

    move-result v2

    .line 52
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzzl;->zza(I)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzI:Lcom/google/android/gms/internal/ads/zzgup;

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgub;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 54
    :cond_1a
    aput-object p4, v6, v8

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_11

    :cond_1c
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaaa;->zzj:Lcom/google/android/gms/internal/ads/zzyt;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzt()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object v13

    .line 56
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzyu;->zzd([Lcom/google/android/gms/internal/ads/zzaab;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzaac;

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v3, :cond_20

    .line 57
    aget-object v3, v6, v8

    if-eqz v3, :cond_1d

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzaab;->zzb:[I

    .line 58
    array-length v7, v11

    if-nez v7, :cond_1e

    :cond_1d
    const/4 v15, 0x1

    const/16 v19, 0x0

    goto :goto_14

    :cond_1e
    const/4 v15, 0x1

    if-ne v7, v15, :cond_1f

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    new-instance v20, Lcom/google/android/gms/internal/ads/zzaad;

    const/16 v19, 0x0

    .line 59
    aget v22, v11, v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v3

    .line 60
    invoke-direct/range {v20 .. v25}, Lcom/google/android/gms/internal/ads/zzaad;-><init>(Lcom/google/android/gms/internal/ads/zzbg;IIILjava/lang/Object;)V

    goto :goto_13

    :cond_1f
    const/16 v19, 0x0

    .line 62
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzaab;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    .line 61
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/gms/internal/ads/zzguf;

    const/4 v12, 0x0

    .line 62
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzyt;->zza(Lcom/google/android/gms/internal/ads/zzbg;[IILcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzyu;

    move-result-object v20

    :goto_13
    aput-object v20, v4, v8

    :goto_14
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_12

    :cond_20
    const/16 v19, 0x0

    new-array v2, v3, [Lcom/google/android/gms/internal/ads/zzmo;

    move/from16 v7, v19

    :goto_15
    if-ge v7, v3, :cond_24

    .line 63
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzaaf;->zza(I)I

    move-result v6

    .line 64
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzzl;->zza(I)Z

    move-result v8

    if-nez v8, :cond_21

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzbl;->zzI:Lcom/google/android/gms/internal/ads/zzgup;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzgub;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    :cond_21
    move-object/from16 v6, p4

    goto :goto_16

    .line 65
    :cond_22
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzaaf;->zza(I)I

    move-result v6

    const/4 v8, -0x2

    if-eq v6, v8, :cond_23

    aget-object v6, v4, v7

    if-eqz v6, :cond_21

    :cond_23
    sget-object v6, Lcom/google/android/gms/internal/ads/zzmo;->zza:Lcom/google/android/gms/internal/ads/zzmo;

    .line 66
    :goto_16
    aput-object v6, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 68
    :cond_24
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/ads/zzzl;Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 7

    .line 1
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzi:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-le p1, v2, :cond_7

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-nez p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "audio/eac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v0

    goto :goto_1

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v6

    goto :goto_1

    :sswitch_2
    const-string v5, "audio/ac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v5, "audio/eac3-joc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_4

    if-eq v1, v2, :cond_4

    if-eq v1, v6, :cond_4

    goto :goto_2

    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzp;->zza()Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 3
    :cond_5
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzp;->zza()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzp;->zzb()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzp;->zzc()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzg:Lcom/google/android/gms/internal/ads/zzzp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaa;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    .line 6
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzzp;->zzd(Lcom/google/android/gms/internal/ads/zzd;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v4

    :cond_7
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch
.end method

.method final synthetic zzl()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzu()V

    return-void
.end method
