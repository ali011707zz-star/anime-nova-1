.class public final Lcom/google/android/gms/internal/ads/zzamv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamf;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzer;

.field private zze:Ljava/util/Map;

.field private zzf:F

.field private zzg:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamv;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzf:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzg:F

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzb:Z

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzi([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzc:Lcom/google/android/gms/internal/ads/zzamu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzamv;->zzb(Lcom/google/android/gms/internal/ads/zzer;Ljava/nio/charset/Charset;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzb:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzc:Lcom/google/android/gms/internal/ads/zzamu;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzer;Ljava/nio/charset/Charset;)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "[Script Info]"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x5b

    if-eqz v1, :cond_6

    .line 3
    :catch_0
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzp(Ljava/nio/charset/Charset;)I

    move-result v1

    if-eq v1, v2, :cond_0

    :cond_2
    const-string v1, ":"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    .line 7
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgql;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 9
    :pswitch_0
    const-string v1, "playresy"

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_3

    :pswitch_1
    const-string v4, "playresx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    :try_start_0
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzg:F

    goto :goto_1

    .line 9
    :cond_5
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzf:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :cond_6
    const-string v1, "[V4+ Styles]"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "SsaParser"

    if-eqz v1, :cond_c

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 12
    :cond_7
    :goto_4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzp(Ljava/nio/charset/Charset;)I

    move-result v5

    if-eq v5, v2, :cond_b

    :cond_8
    const-string v5, "Format:"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzamw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamw;

    move-result-object v1

    goto :goto_4

    :cond_9
    const-string v5, "Style:"

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_a

    const-string v5, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_a
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamw;)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzamy;->zza:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zze:Ljava/util/Map;

    goto/16 :goto_0

    :cond_c
    const-string v1, "[V4 Styles]"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "[V4 Styles] are not supported"

    .line 21
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "[Events]"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x70092d0c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzc(Ljava/lang/String;)J
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamv;->zza:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v2, 0xd693a400L

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x3938700

    mul-long/2addr v2, v4

    const/4 v4, 0x3

    .line 5
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    const/4 v6, 0x4

    .line 6
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    mul-long/2addr v6, v8

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v6

    return-wide v0
.end method

.method private static zzd(I)F
    .locals 1

    .line 0
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    return p0
.end method

.method private static zze(JLjava/util/List;Ljava/util/List;)I
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 p0, v0, -0x1

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    .line 6
    :goto_1
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzdr;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int v4, v1, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamv;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    move-object/from16 v6, p1

    .line 3
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 4
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zzR()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzamv;->zzb:Z

    if-nez v4, :cond_1

    .line 7
    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzamv;->zzb(Lcom/google/android/gms/internal/ads/zzer;Ljava/nio/charset/Charset;)V

    const/4 v4, 0x0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamv;->zzc:Lcom/google/android/gms/internal/ads/zzamu;

    .line 8
    :goto_0
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_18

    const-string v11, "Format:"

    .line 9
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 10
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object v4

    goto :goto_0

    .line 11
    :cond_2
    const-string v11, "Dialogue:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "SsaParser"

    if-nez v4, :cond_4

    const-string v8, "Skipping dialogue line before complete format: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object/from16 v16, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    goto/16 :goto_e

    .line 13
    :cond_4
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    const/16 v11, 0x9

    .line 14
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iget v13, v4, Lcom/google/android/gms/internal/ads/zzamu;->zzf:I

    const-string v14, ","

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 15
    array-length v14, v11

    if-eq v14, v13, :cond_5

    const-string v8, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzamu;->zza:I

    if-eq v13, v8, :cond_6

    .line 17
    :try_start_0
    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 70
    :catch_0
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzamu;->zza:I

    .line 18
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Fail to parse layer: "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v13, 0x0

    .line 17
    :goto_2
    iget v14, v4, Lcom/google/android/gms/internal/ads/zzamu;->zzb:I

    .line 19
    aget-object v14, v11, v14

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzamv;->zzc(Ljava/lang/String;)J

    move-result-wide v14

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v18, v14, v16

    const-string v6, "Skipping invalid timing: "

    if-nez v18, :cond_7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-static {v12, v6}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget v9, v4, Lcom/google/android/gms/internal/ads/zzamu;->zzc:I

    .line 21
    aget-object v9, v11, v9

    move-object/from16 p4, v11

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzamv;->zzc(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v9, v10, v16

    if-eqz v9, :cond_8

    cmp-long v9, v10, v14

    if-gtz v9, :cond_9

    :cond_8
    move-object/from16 v16, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    goto/16 :goto_d

    .line 22
    :cond_9
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamv;->zze:Ljava/util/Map;

    if-eqz v6, :cond_a

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzamu;->zzd:I

    if-eq v7, v8, :cond_a

    .line 23
    aget-object v7, p4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzamy;

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzamu;->zze:I

    .line 24
    aget-object v7, p4, v7

    .line 25
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzamx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamx;

    move-result-object v9

    .line 26
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzamx;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\N"

    move-object/from16 v16, v1

    .line 27
    const-string v1, "\n"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\n"

    .line 28
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "\\h"

    const-string v8, "\u00a0"

    .line 29
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzamv;->zzf:F

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzamv;->zzg:F

    new-instance v0, Landroid/text/SpannableString;

    .line 30
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzcw;->zzq(I)Lcom/google/android/gms/internal/ads/zzcw;

    const v17, -0x800001

    if-eqz v6, :cond_12

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzc:Ljava/lang/Integer;

    move-object/from16 v19, v4

    if-eqz v13, :cond_b

    .line 32
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 33
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v4, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 34
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v13

    move-object/from16 v20, v5

    move/from16 v21, v7

    const/16 v5, 0x21

    const/4 v7, 0x0

    .line 32
    invoke-virtual {v0, v4, v7, v13, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_b
    move-object/from16 v20, v5

    move/from16 v21, v7

    :goto_4
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzj:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzd:Ljava/lang/Integer;

    if-eqz v4, :cond_c

    .line 35
    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    .line 36
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v7, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 37
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v13, 0x21

    .line 35
    invoke-virtual {v0, v7, v5, v4, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zze:F

    cmpl-float v5, v4, v17

    if-eqz v5, :cond_d

    cmpl-float v5, v8, v17

    if-eqz v5, :cond_d

    div-float/2addr v4, v8

    const/4 v5, 0x1

    .line 38
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(FI)Lcom/google/android/gms/internal/ads/zzcw;

    :cond_d
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzf:Z

    if-eqz v4, :cond_f

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzg:Z

    if-eqz v4, :cond_e

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x3

    .line 43
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 44
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/4 v7, 0x0

    const/16 v13, 0x21

    .line 43
    invoke-virtual {v0, v4, v7, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_e
    const/4 v7, 0x0

    const/16 v13, 0x21

    .line 56
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    .line 41
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 42
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 41
    invoke-virtual {v0, v4, v7, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    const/16 v13, 0x21

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzg:Z

    if-eqz v4, :cond_10

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    .line 39
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 40
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 39
    invoke-virtual {v0, v4, v7, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43
    :cond_10
    :goto_5
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzh:Z

    if-eqz v4, :cond_11

    .line 45
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 46
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 45
    invoke-virtual {v0, v4, v7, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzi:Z

    if-eqz v4, :cond_13

    .line 47
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 48
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 47
    invoke-virtual {v0, v4, v7, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_12
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    :cond_13
    :goto_6
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzamx;->zza:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_14

    goto :goto_7

    :cond_14
    if-eqz v6, :cond_15

    .line 56
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    goto :goto_7

    :cond_15
    const/4 v0, -0x1

    .line 47
    :goto_7
    const-string v4, "Unknown alignment: "

    packed-switch v0, :pswitch_data_0

    .line 49
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    const/4 v5, 0x0

    goto :goto_8

    .line 56
    :pswitch_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    :pswitch_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_8

    :pswitch_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 50
    :goto_8
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcw;

    const/high16 v7, -0x80000000

    packed-switch v0, :pswitch_data_1

    .line 51
    :pswitch_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_6
    move v5, v7

    goto :goto_9

    :pswitch_7
    const/4 v5, 0x2

    goto :goto_9

    :pswitch_8
    const/4 v5, 0x1

    goto :goto_9

    :pswitch_9
    const/4 v5, 0x0

    .line 52
    :goto_9
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzcw;->zzj(I)Lcom/google/android/gms/internal/ads/zzcw;

    packed-switch v0, :pswitch_data_2

    .line 53
    :pswitch_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_b
    const/4 v7, 0x0

    goto :goto_a

    :pswitch_c
    const/4 v7, 0x1

    goto :goto_a

    :pswitch_d
    const/4 v7, 0x2

    .line 54
    :goto_a
    :pswitch_e
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzamx;->zzb:Landroid/graphics/PointF;

    if-eqz v0, :cond_16

    cmpl-float v4, v8, v17

    if-eqz v4, :cond_16

    cmpl-float v4, v21, v17

    if-eqz v4, :cond_16

    .line 57
    iget v4, v0, Landroid/graphics/PointF;->x:F

    div-float v4, v4, v21

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    .line 58
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v8

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    goto :goto_b

    :cond_16
    const/4 v7, 0x0

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzk()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamv;->zzd(I)F

    move-result v0

    .line 55
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzh()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamv;->zzd(I)F

    move-result v0

    .line 56
    invoke-virtual {v1, v0, v7}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    .line 59
    :goto_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    .line 60
    invoke-static {v14, v15, v3, v2}, Lcom/google/android/gms/internal/ads/zzamv;->zze(JLjava/util/List;Ljava/util/List;)I

    move-result v1

    .line 61
    invoke-static {v10, v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzamv;->zze(JLjava/util/List;Ljava/util/List;)I

    move-result v4

    :goto_c
    if-ge v1, v4, :cond_17

    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 21
    :goto_d
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto/16 :goto_0

    :cond_18
    const/4 v7, 0x0

    move v0, v7

    .line 63
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 64
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 65
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_19

    move-object/from16 v1, p5

    const/4 v4, -0x1

    :goto_10
    const/4 v5, 0x1

    goto :goto_11

    :cond_19
    move v0, v7

    .line 66
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    if-eq v0, v1, :cond_1b

    .line 67
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-int/lit8 v1, v0, 0x1

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v12, v5, v10

    new-instance v8, Lcom/google/android/gms/internal/ads/zzalx;

    .line 69
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzalx;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v1, p5

    .line 70
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzdr;->zza(Ljava/lang/Object;)V

    goto :goto_10

    :goto_11
    add-int/2addr v0, v5

    goto :goto_f

    .line 66
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
