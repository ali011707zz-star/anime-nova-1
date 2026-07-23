.class public final Lcom/google/android/gms/internal/ads/zzaok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqa;


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaok;->zza:Ljava/util/List;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzapq;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaok;->zze(Lcom/google/android/gms/internal/ads/zzapz;)Ljava/util/List;

    move-result-object p1

    const-string v1, "video/mp2t"

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzaqf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaok;->zze(Lcom/google/android/gms/internal/ads/zzapz;)Ljava/util/List;

    move-result-object p1

    const-string v1, "video/mp2t"

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaqf;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzapz;)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzapz;->zze:[B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaok;->zza:Ljava/util/List;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-lez v1, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_4

    const/4 v5, 0x3

    .line 7
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_2

    :cond_0
    move v7, v2

    :goto_2
    if-eqz v7, :cond_1

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_3

    .line 13
    :cond_1
    const-string v9, "application/cea-608"

    move v6, v8

    .line 9
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzs()I

    move-result v10

    int-to-byte v10, v10

    .line 10
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    if-eqz v7, :cond_3

    and-int/lit8 v7, v10, 0x40

    .line 11
    sget v10, Lcom/google/android/gms/internal/ads/zzdo;->$r8$clinit:I

    if-eqz v7, :cond_2

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_4

    .line 13
    :cond_2
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    .line 12
    :goto_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_3
    const/4 v7, 0x0

    :goto_5
    new-instance v8, Lcom/google/android/gms/internal/ads/zzt;

    .line 13
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 14
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 15
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 16
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzJ(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 17
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 18
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    .line 13
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final zza()Landroid/util/SparseArray;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzaqc;
    .locals 4

    const/4 v0, 0x2

    .line 10
    const-string v1, "video/mp2t"

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/16 v0, 0x15

    if-eq p1, v0, :cond_9

    const/16 v0, 0x1b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-eq p1, v0, :cond_5

    const/16 v0, 0xac

    if-eq p1, v0, :cond_4

    const/16 v0, 0x101

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_b

    const/16 v0, 0x81

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return-object p1

    .line 5
    :pswitch_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapo;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzapf;

    const-string v0, "application/x-scte35"

    .line 6
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzapo;-><init>(Lcom/google/android/gms/internal/ads/zzapn;)V

    return-object p1

    .line 2
    :pswitch_1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaoy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapz;->zza()I

    move-result p2

    .line 3
    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaoy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object v0

    .line 15
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaos;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzd(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzaqf;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzaos;-><init>(Lcom/google/android/gms/internal/ads/zzaqf;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object p1

    .line 10
    :pswitch_3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapg;

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapz;->zza()I

    move-result p2

    .line 2
    invoke-direct {v3, v2, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaoj;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object v0

    .line 8
    :cond_0
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaol;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapz;->zza()I

    move-result p2

    const/16 v3, 0x1520

    .line 9
    invoke-direct {v2, p1, p2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object v0

    .line 10
    :cond_1
    :pswitch_4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaol;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapz;->zza()I

    move-result p2

    const/16 v3, 0x1000

    invoke-direct {v2, p1, p2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaol;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object v0

    .line 17
    :cond_2
    :pswitch_5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaod;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapz;->zza()I

    move-result p2

    .line 11
    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object v0

    .line 6
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapo;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzapf;

    const-string v0, "application/vnd.dvb.ait"

    .line 7
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzapo;-><init>(Lcom/google/android/gms/internal/ads/zzapn;)V

    return-object p1

    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaog;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapz;->zza()I

    move-result p2

    .line 8
    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object v0

    .line 11
    :cond_5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzd:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaom;

    .line 12
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaom;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object p2

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzapa;

    .line 13
    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzapa;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaow;

    .line 14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzc(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzapq;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzaow;-><init>(Lcom/google/android/gms/internal/ads/zzapq;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object p1

    .line 3
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaou;

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzc(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzapq;

    move-result-object p2

    .line 5
    invoke-direct {v0, p2, v2, v2, v1}, Lcom/google/android/gms/internal/ads/zzaou;-><init>(Lcom/google/android/gms/internal/ads/zzapq;ZZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object p1

    .line 14
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaox;

    .line 15
    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzaox;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object p1

    .line 9
    :cond_a
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapz;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapz;->zza()I

    move-result p2

    .line 17
    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object v0

    .line 16
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaop;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzd(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzaqf;

    move-result-object p2

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzaop;-><init>(Lcom/google/android/gms/internal/ads/zzaqf;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x86
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
