.class public final Lcom/google/android/gms/internal/ads/zzaeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafa;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:[I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzaep;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzaep;


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzguf;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzamd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x15

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeq;->zzb:[I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaep;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaen;->zza:Lcom/google/android/gms/internal/ads/zzaen;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaep;-><init>(Lcom/google/android/gms/internal/ads/zzaeo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeq;->zzc:Lcom/google/android/gms/internal/ads/zzaep;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaep;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaem;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaep;-><init>(Lcom/google/android/gms/internal/ads/zzaeo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaeq;->zzd:Lcom/google/android/gms/internal/ads/zzaep;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaly;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zzf:Lcom/google/android/gms/internal/ads/zzamd;

    return-void
.end method

.method private final zzc(ILjava/util/List;)V
    .locals 8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaha;

    .line 1
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaha;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahp;

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahb;-><init>()V

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqp;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqp;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalw;-><init>()V

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zzf:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagt;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzagt;-><init>(ILcom/google/android/gms/internal/ads/zzamd;)V

    .line 7
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaeq;->zzd:Lcom/google/android/gms/internal/ads/zzaep;

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaep;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahq;

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zze:Lcom/google/android/gms/internal/ads/zzguf;

    if-nez p1, :cond_1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zze:Lcom/google/android/gms/internal/ads/zzguf;

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zzf:Lcom/google/android/gms/internal/ads/zzamd;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapx;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfg;

    const-wide/16 v2, 0x0

    .line 14
    invoke-direct {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzfg;-><init>(J)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaok;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zze:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-direct {v6, v0, p1}, Lcom/google/android/gms/internal/ads/zzaok;-><init>(ILjava/util/List;)V

    const v7, 0x1b8a0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzapx;-><init>(IILcom/google/android/gms/internal/ads/zzamd;Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzaqa;I)V

    .line 13
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 15
    :pswitch_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzapm;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 16
    :pswitch_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalm;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :pswitch_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zzf:Lcom/google/android/gms/internal/ads/zzamd;

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzako;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Lcom/google/android/gms/internal/ads/zzamd;ILcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzalc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzagh;)V

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakw;

    .line 21
    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzakw;-><init>(Lcom/google/android/gms/internal/ads/zzamd;I)V

    .line 20
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 22
    :pswitch_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajp;

    .line 23
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(I)V

    .line 22
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeq;->zzf:Lcom/google/android/gms/internal/ads/zzamd;

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/zzajh;

    .line 25
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzamd;I)V

    .line 24
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 26
    :pswitch_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahj;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 16
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaeq;->zzc:Lcom/google/android/gms/internal/ads/zzaep;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzaep;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 28
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahg;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 30
    :pswitch_12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzagp;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzagp;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 31
    :pswitch_13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoi;

    .line 32
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaoi;-><init>(I)V

    .line 31
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 33
    :pswitch_14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaof;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaof;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 34
    :pswitch_15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized zza()[Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaeq;->zzb(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 24

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "Content-Type"

    move-object/from16 v4, p2

    .line 2
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :goto_0
    const/16 v8, 0x10

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/16 v11, 0x14

    const/16 v12, 0xc

    const/4 v13, 0x6

    const/16 v14, 0xb

    const/16 v15, 0xe

    const/16 v16, 0x13

    const/16 v17, 0x1

    const/16 v18, 0x9

    const/16 v19, 0xd

    const/16 v20, 0xf

    const/16 v21, 0x8

    const/16 v22, 0xa

    const/4 v5, -0x1

    if-nez v3, :cond_2

    :goto_1
    move v3, v5

    goto/16 :goto_4

    .line 4
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzas;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "video/x-matroska"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, v22

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "audio/webm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, v19

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "audio/mpeg"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, v20

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "audio/midi"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, v18

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "audio/flac"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v10

    goto/16 :goto_3

    :sswitch_5
    const-string v6, "audio/eac3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, v17

    goto/16 :goto_3

    :sswitch_6
    const-string v6, "audio/3gpp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v9

    goto/16 :goto_3

    :sswitch_7
    const-string v6, "video/mp4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v8

    goto/16 :goto_3

    :sswitch_8
    const-string v6, "audio/wav"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x16

    goto/16 :goto_3

    :sswitch_9
    const-string v6, "audio/ogg"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, v16

    goto/16 :goto_3

    :sswitch_a
    const-string v6, "audio/mp4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x11

    goto/16 :goto_3

    :sswitch_b
    const-string v6, "audio/amr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    goto/16 :goto_3

    :sswitch_c
    const-string v6, "audio/ac4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto/16 :goto_3

    :sswitch_d
    const-string v6, "audio/ac3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    goto/16 :goto_3

    :sswitch_e
    const-string v6, "video/x-flv"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, v21

    goto/16 :goto_3

    :sswitch_f
    const-string v6, "application/webm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v15

    goto/16 :goto_3

    :sswitch_10
    const-string v6, "audio/x-matroska"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v14

    goto/16 :goto_3

    :sswitch_11
    const-string v6, "image/png"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1a

    goto/16 :goto_3

    :sswitch_12
    const-string v6, "image/bmp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1c

    goto/16 :goto_3

    :sswitch_13
    const-string v6, "text/vtt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x17

    goto/16 :goto_3

    :sswitch_14
    const-string v6, "video/x-msvideo"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x19

    goto/16 :goto_3

    :sswitch_15
    const-string v6, "application/mp4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x12

    goto/16 :goto_3

    :sswitch_16
    const-string v6, "image/webp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1b

    goto/16 :goto_3

    :sswitch_17
    const-string v6, "image/jpeg"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x18

    goto :goto_3

    :sswitch_18
    const-string v6, "image/heif"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1d

    goto :goto_3

    :sswitch_19
    const-string v6, "image/heic"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1e

    goto :goto_3

    :sswitch_1a
    const-string v6, "image/avif"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1f

    goto :goto_3

    :sswitch_1b
    const-string v6, "audio/amr-wb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v13

    goto :goto_3

    :sswitch_1c
    const-string v6, "video/webm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v12

    goto :goto_3

    :sswitch_1d
    const-string v6, "video/mp2t"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :sswitch_1e
    const-string v6, "video/mp2p"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v11

    goto :goto_3

    :sswitch_1f
    const-string v6, "audio/eac3-joc"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v5

    :goto_3
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move v3, v2

    goto :goto_4

    :pswitch_1
    move v3, v11

    goto :goto_4

    :pswitch_2
    move/from16 v3, v16

    goto :goto_4

    :pswitch_3
    const/16 v3, 0x12

    goto :goto_4

    :pswitch_4
    const/16 v3, 0x11

    goto :goto_4

    :pswitch_5
    move v3, v8

    goto :goto_4

    :pswitch_6
    move v3, v15

    goto :goto_4

    :pswitch_7
    move/from16 v3, v19

    goto :goto_4

    :pswitch_8
    move v3, v12

    goto :goto_4

    :pswitch_9
    move v3, v14

    goto :goto_4

    :pswitch_a
    move/from16 v3, v22

    goto :goto_4

    :pswitch_b
    move/from16 v3, v18

    goto :goto_4

    :pswitch_c
    move/from16 v3, v21

    goto :goto_4

    :pswitch_d
    move v3, v10

    goto :goto_4

    :pswitch_e
    move v3, v13

    goto :goto_4

    :pswitch_f
    move/from16 v3, v20

    goto :goto_4

    :pswitch_10
    move v3, v9

    goto :goto_4

    :pswitch_11
    const/4 v3, 0x4

    goto :goto_4

    :pswitch_12
    const/4 v3, 0x3

    goto :goto_4

    :pswitch_13
    move/from16 v3, v17

    goto :goto_4

    :pswitch_14
    move v3, v4

    :goto_4
    if-eq v3, v5, :cond_4

    .line 6
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzaeq;->zzc(ILjava/util/List;)V

    .line 7
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    :cond_5
    move v6, v5

    goto/16 :goto_5

    .line 44
    :cond_6
    const-string v7, ".ac3"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, ".ec3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v6, v4

    goto/16 :goto_5

    :cond_8
    const-string v7, ".ac4"

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    move/from16 v6, v17

    goto/16 :goto_5

    :cond_9
    const-string v7, ".adts"

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, ".aac"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const/4 v6, 0x2

    goto/16 :goto_5

    :cond_b
    const-string v7, ".amr"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v6, 0x3

    goto/16 :goto_5

    :cond_c
    const-string v7, ".flac"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v6, 0x4

    goto/16 :goto_5

    :cond_d
    const-string v7, ".flv"

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    move v6, v9

    goto/16 :goto_5

    :cond_e
    const-string v7, ".mid"

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, ".midi"

    .line 15
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, ".smf"

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    move/from16 v6, v20

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v9, ".mk"

    add-int/lit8 v7, v7, -0x4

    .line 17
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, ".webm"

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    move v6, v13

    goto/16 :goto_5

    :cond_12
    const-string v7, ".mp3"

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v6, v10

    goto/16 :goto_5

    :cond_13
    const-string v7, ".mp4"

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    const-string v9, ".m4"

    .line 21
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v9, ".mp4"

    add-int/lit8 v7, v7, -0x5

    .line 22
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x5

    const-string v9, ".cmf"

    .line 23
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_14
    move/from16 v6, v21

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    const-string v9, ".og"

    .line 24
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, ".opus"

    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_16
    move/from16 v6, v18

    goto/16 :goto_5

    :cond_17
    const-string v7, ".ps"

    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, ".mpeg"

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, ".mpg"

    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, ".m2p"

    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    :cond_18
    move/from16 v6, v22

    goto/16 :goto_5

    :cond_19
    const-string v7, ".ts"

    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    const-string v9, ".ts"

    .line 31
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    move v6, v14

    goto/16 :goto_5

    :cond_1b
    const-string v7, ".wav"

    .line 32
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, ".wave"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1c
    move v6, v12

    goto/16 :goto_5

    :cond_1d
    const-string v7, ".vtt"

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, ".webvtt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_1e
    move/from16 v6, v19

    goto/16 :goto_5

    :cond_1f
    const-string v7, ".jpg"

    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, ".jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    :cond_20
    move v6, v15

    goto :goto_5

    :cond_21
    const-string v7, ".avi"

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    move v6, v8

    goto :goto_5

    :cond_22
    const-string v7, ".png"

    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/16 v6, 0x11

    goto :goto_5

    :cond_23
    const-string v7, ".webp"

    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 v6, 0x12

    goto :goto_5

    :cond_24
    const-string v7, ".bmp"

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, ".dib"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    :cond_25
    move/from16 v6, v16

    goto :goto_5

    :cond_26
    const-string v7, ".heic"

    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, ".heif"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    :cond_27
    move v6, v11

    goto :goto_5

    :cond_28
    const-string v7, ".avif"

    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v2

    :goto_5
    if-eq v6, v5, :cond_29

    if-eq v6, v3, :cond_29

    .line 41
    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/internal/ads/zzaeq;->zzc(ILjava/util/List;)V

    :cond_29
    sget-object v5, Lcom/google/android/gms/internal/ads/zzaeq;->zzb:[I

    move v7, v4

    :goto_6
    if-ge v7, v2, :cond_2b

    .line 42
    aget v8, v5, v7

    if-eq v8, v3, :cond_2a

    if-eq v8, v6, :cond_2a

    .line 43
    invoke-direct {v1, v8, v0}, Lcom/google/android/gms/internal/ads/zzaeq;->zzc(ILjava/util/List;)V

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_2b
    new-array v2, v4, [Lcom/google/android/gms/internal/ads/zzaeu;

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzaeu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_1f
        -0x6315f78b -> :sswitch_1e
        -0x6315f787 -> :sswitch_1d
        -0x63118f53 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x58abd7ba -> :sswitch_1a
        -0x58a8e8f5 -> :sswitch_19
        -0x58a8e8f2 -> :sswitch_18
        -0x58a7d764 -> :sswitch_17
        -0x58a21830 -> :sswitch_16
        -0x4a681e4e -> :sswitch_15
        -0x405dba54 -> :sswitch_14
        -0x3be2f26c -> :sswitch_13
        -0x3468a12f -> :sswitch_12
        -0x34686c8b -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
