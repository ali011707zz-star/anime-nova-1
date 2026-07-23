.class public abstract Lcom/google/android/gms/internal/ads/zzanw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/Map;

.field private static final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zza:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    .line 2
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zzc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanw;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzer;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzanq;
    .locals 6

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzanw;->zza:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzanw;->zzd(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/gms/internal/ads/zzer;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v2

    .line 8
    :cond_2
    invoke-static {v2, v4, p0, p1}, Lcom/google/android/gms/internal/ads/zzanw;->zzd(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/gms/internal/ads/zzer;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object p0

    return-object p0
.end method

.method static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanv;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzanw;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanv;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zza()Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object p0

    return-object p0
.end method

.method static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 39
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzant;

    invoke-static {v0, v1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzanw;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzant;->zzb()Lcom/google/android/gms/internal/ads/zzant;

    move-result-object v1

    .line 42
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 43
    invoke-static {v0, v1, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzanw;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 44
    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v8, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3e

    const/16 v11, 0x3c

    const/16 v12, 0x26

    const/4 v14, 0x2

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/4 v6, 0x1

    if-eq v9, v12, :cond_17

    if-eq v9, v11, :cond_2

    .line 38
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_9

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_3

    goto/16 :goto_9

    .line 7
    :cond_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 8
    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v15, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :goto_2
    add-int/lit8 v10, v8, -0x2

    .line 10
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_5

    move v11, v6

    goto :goto_3

    :cond_5
    move/from16 v11, v16

    :goto_3
    if-ne v9, v12, :cond_6

    move/from16 v17, v14

    goto :goto_4

    :cond_6
    move/from16 v17, v6

    :goto_4
    add-int v7, v7, v17

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v8, -0x1

    .line 11
    :goto_5
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto/16 :goto_9

    .line 13
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 15
    sget-object v17, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const-string v13, "[ \\.]"

    .line 16
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 15
    aget-object v10, v10, v16

    .line 17
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x62

    if-eq v13, v14, :cond_10

    const/16 v14, 0x63

    if-eq v13, v14, :cond_f

    const/16 v6, 0x69

    if-eq v13, v6, :cond_e

    const/16 v6, 0xe42

    if-eq v13, v6, :cond_d

    const v6, 0x3291ee

    if-eq v13, v6, :cond_c

    const v6, 0x3595da

    if-eq v13, v6, :cond_b

    const/16 v6, 0x75

    if-eq v13, v6, :cond_a

    const/16 v6, 0x76

    if-eq v13, v6, :cond_9

    goto :goto_6

    :cond_9
    const-string v6, "v"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v13, 0x7

    goto :goto_7

    :cond_a
    const-string v6, "u"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v13, 0x6

    goto :goto_7

    .line 25
    :cond_b
    const-string v6, "ruby"

    .line 17
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v13, 0x4

    goto :goto_7

    :cond_c
    const-string v6, "lang"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v13, 0x3

    goto :goto_7

    :cond_d
    const-string v6, "rt"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v13, 0x5

    goto :goto_7

    :cond_e
    const-string v6, "i"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v13, 0x2

    goto :goto_7

    :cond_f
    const-string v13, "c"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    move v13, v6

    goto :goto_7

    :cond_10
    const-string v6, "b"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move/from16 v13, v16

    goto :goto_7

    :cond_11
    :goto_6
    move v13, v15

    :goto_7
    packed-switch v13, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    if-ne v9, v12, :cond_15

    .line 18
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_9

    .line 19
    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzant;

    .line 20
    invoke-static {v0, v6, v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzanw;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    new-instance v7, Lcom/google/android/gms/internal/ads/zzans;

    .line 22
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/4 v11, 0x0

    invoke-direct {v7, v6, v9, v11}, Lcom/google/android/gms/internal/ads/zzans;-><init>(Lcom/google/android/gms/internal/ads/zzant;I[B)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 23
    :cond_14
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 24
    :goto_8
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzant;->zza:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_9

    :cond_15
    if-nez v11, :cond_16

    .line 25
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzant;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzant;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_16
    :goto_9
    move v7, v8

    goto/16 :goto_0

    :cond_17
    const/16 v7, 0x3b

    .line 26
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/16 v13, 0x20

    .line 27
    invoke-virtual {v1, v13, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-ne v7, v15, :cond_18

    move v7, v14

    goto :goto_a

    :cond_18
    if-eq v14, v15, :cond_19

    .line 28
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_19
    :goto_a
    if-eq v7, v15, :cond_24

    .line 29
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v15, 0xced

    if-eq v9, v15, :cond_1d

    const/16 v15, 0xd88

    if-eq v9, v15, :cond_1c

    const v15, 0x179c4

    if-eq v9, v15, :cond_1b

    const v15, 0x337f11

    if-eq v9, v15, :cond_1a

    goto :goto_b

    .line 34
    :cond_1a
    const-string v9, "nbsp"

    .line 30
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v15, 0x2

    goto :goto_c

    :cond_1b
    const-string v9, "amp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v15, 0x3

    goto :goto_c

    :cond_1c
    const-string v9, "lt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    move/from16 v15, v16

    goto :goto_c

    :cond_1d
    const-string v9, "gt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    move v15, v6

    goto :goto_c

    :cond_1e
    :goto_b
    const/4 v15, -0x1

    :goto_c
    if-eqz v15, :cond_22

    if-eq v15, v6, :cond_21

    const/4 v6, 0x2

    if-eq v15, v6, :cond_20

    const/4 v6, 0x3

    if-eq v15, v6, :cond_1f

    .line 35
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x21

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "ignoring unsupported entity: \'&"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";\'"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "WebvttCueParser"

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 31
    :cond_1f
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    .line 32
    :cond_20
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    .line 33
    :cond_21
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    .line 34
    :cond_22
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_d
    if-ne v7, v14, :cond_23

    .line 35
    const-string v6, " "

    .line 36
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 37
    :cond_24
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static zzd(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/gms/internal/ads/zzer;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzanq;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanv;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzany;->zza(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzanv;->zza:J

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzany;->zza(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzb:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzanw;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanv;)V

    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzanw;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzc:Ljava/lang/CharSequence;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zza()Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzanv;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzb:J

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzanq;-><init>(Lcom/google/android/gms/internal/ads/zzcx;JJ)V

    return-object v1

    .line 14
    :cond_2
    :try_start_1
    throw v2

    .line 15
    :cond_3
    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    :catch_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    const-string p2, "Skipping cue with bad header: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanv;)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    const-string v1, "WebvttCueParser"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzanw;->zzb:Ljava/util/regex/Pattern;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ":"

    const-string v4, "Unknown cue setting "

    .line 2
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    .line 3
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    .line 4
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_0
    const-string v9, "line"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "Invalid anchor value: "

    const-string v13, "center"

    const-string v14, "middle"

    const-string v15, "end"

    const-string v12, "start"

    if-nez v9, :cond_14

    :try_start_1
    const-string v9, "align"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x5

    if-eqz v9, :cond_6

    const-string v6, "Invalid alignment value: "

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    .line 13
    :sswitch_0
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    goto :goto_2

    :sswitch_1
    const-string v9, "right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    goto :goto_2

    :sswitch_2
    const-string v9, "left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v5

    goto :goto_2

    :sswitch_3
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_2

    :sswitch_4
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_5
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v9, -0x1

    :goto_2
    if-eqz v9, :cond_5

    if-eq v9, v5, :cond_4

    if-eq v9, v7, :cond_1

    const/4 v5, 0x3

    if-eq v9, v5, :cond_1

    const/4 v5, 0x4

    if-eq v9, v5, :cond_3

    if-eq v9, v11, :cond_2

    .line 4
    :try_start_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v5, v7

    goto :goto_3

    :cond_2
    move v5, v11

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    goto :goto_3

    :cond_4
    const/4 v5, 0x4

    :cond_5
    :goto_3
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzd:I

    goto/16 :goto_0

    :cond_6
    const-string v9, "position"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "size"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 20
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzany;->zzb(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzj:F

    goto/16 :goto_0

    :cond_7
    const-string v9, "vertical"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v6, "Invalid \'vertical\' value: "

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v10, 0xd86

    if-eq v9, v10, :cond_9

    const/16 v10, 0xe3a

    if-eq v9, v10, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    const-string v9, "rl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v11, 0x0

    goto :goto_5

    :cond_9
    const-string v9, "lr"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v11, v5

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v11, -0x1

    :goto_5
    if-eqz v11, :cond_c

    if-eq v11, v5, :cond_b

    .line 20
    :try_start_3
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, -0x80000000

    goto :goto_6

    :cond_b
    move v5, v7

    :cond_c
    :goto_6
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzk:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x2c

    .line 14
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_13

    add-int/lit8 v9, v6, 0x1

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    sparse-switch v16, :sswitch_data_1

    goto :goto_7

    :sswitch_6
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v12, v5

    goto :goto_8

    :sswitch_7
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v12, v11

    goto :goto_8

    :sswitch_8
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x3

    goto :goto_8

    :sswitch_9
    const-string v12, "line-right"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x4

    goto :goto_8

    :sswitch_a
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v12, v7

    goto :goto_8

    :sswitch_b
    const-string v12, "line-left"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v12, -0x1

    :goto_8
    if-eqz v12, :cond_11

    if-eq v12, v5, :cond_11

    if-eq v12, v7, :cond_12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_10

    if-eq v12, v11, :cond_10

    .line 17
    :try_start_4
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, -0x80000000

    goto :goto_9

    :cond_10
    move v5, v7

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    :cond_12
    :goto_9
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzi:I

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 19
    :cond_13
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzany;->zzb(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzh:F

    goto/16 :goto_0

    :cond_14
    const/16 v6, 0x2c

    .line 5
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_19

    add-int/lit8 v11, v6, 0x1

    .line 6
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    sparse-switch v16, :sswitch_data_2

    goto :goto_a

    :sswitch_c
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v9, 0x0

    goto :goto_a

    :sswitch_d
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v9, 0x3

    goto :goto_a

    :sswitch_e
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    move v9, v7

    goto :goto_a

    :sswitch_f
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    move v9, v5

    :cond_15
    :goto_a
    if-eqz v9, :cond_17

    if-eq v9, v5, :cond_16

    if-eq v9, v7, :cond_16

    const/4 v13, 0x3

    if-eq v9, v13, :cond_18

    .line 8
    :try_start_5
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v7, -0x80000000

    goto :goto_b

    :cond_16
    move v7, v5

    goto :goto_b

    :cond_17
    const/4 v7, 0x0

    :cond_18
    :goto_b
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzg:I

    const/4 v7, 0x0

    .line 9
    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_19
    const-string v6, "%"

    .line 10
    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 11
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzany;->zzb(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zze:F

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzf:I

    goto/16 :goto_0

    .line 12
    :cond_1a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzanv;->zze:F

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanv;->zzf:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 23
    :catch_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Skipping bad cue setting: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6dd215c0 -> :sswitch_b
        -0x514d33ab -> :sswitch_a
        -0x4c1a40fd -> :sswitch_9
        -0x4009266b -> :sswitch_8
        0x188db -> :sswitch_7
        0x68ac462 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_f
        -0x4009266b -> :sswitch_e
        0x188db -> :sswitch_d
        0x68ac462 -> :sswitch_c
    .end sparse-switch
.end method

.method private static zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    .line 2
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 3
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzant;->zza:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v10, -0x1

    if-eqz v7, :cond_7

    const/16 v13, 0x69

    if-eq v7, v13, :cond_6

    const v13, 0x3291ee

    if-eq v7, v13, :cond_5

    const v13, 0x3595da

    if-eq v7, v13, :cond_4

    const/16 v13, 0x62

    if-eq v7, v13, :cond_3

    const/16 v13, 0x63

    if-eq v7, v13, :cond_2

    const/16 v13, 0x75

    if-eq v7, v13, :cond_1

    const/16 v13, 0x76

    if-eq v7, v13, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "v"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x5

    goto :goto_1

    :cond_1
    const-string v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x3

    goto :goto_1

    :cond_2
    const-string v7, "c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x4

    goto :goto_1

    :cond_3
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    goto :goto_1

    .line 32
    :cond_4
    const-string v7, "ruby"

    .line 3
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x2

    goto :goto_1

    :cond_5
    const-string v7, "lang"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x6

    goto :goto_1

    :cond_6
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x7

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v10

    :goto_1
    const/16 v7, 0x21

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_a

    .line 20
    :pswitch_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzant;->zzc:Ljava/lang/String;

    .line 21
    new-instance v13, Lcom/google/android/gms/internal/ads/zzdf;

    invoke-direct {v13, v6}, Lcom/google/android/gms/internal/ads/zzdf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 22
    :pswitch_1
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzant;->zzd:Ljava/util/Set;

    .line 23
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzanw;->zzc:Ljava/util/Map;

    .line 24
    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 25
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 26
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v14, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v14, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_a
    sget-object v14, Lcom/google/android/gms/internal/ads/zzanw;->zzd:Ljava/util/Map;

    .line 27
    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 28
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 29
    new-instance v14, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v14, v13}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v14, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 30
    :pswitch_2
    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 4
    :pswitch_3
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzanw;->zzg(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)I

    move-result v6

    new-instance v13, Ljava/util/ArrayList;

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v14, p2

    .line 6
    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzans;->zzb()Ljava/util/Comparator;

    move-result-object v14

    .line 7
    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v11, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 8
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v14, v8, :cond_e

    .line 9
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzans;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzans;->zzc()Lcom/google/android/gms/internal/ads/zzant;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzant;->zza:Ljava/lang/String;

    const-string v12, "rt"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 10
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzans;

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzans;->zzc()Lcom/google/android/gms/internal/ads/zzant;

    move-result-object v12

    .line 12
    invoke-static {v3, v0, v12}, Lcom/google/android/gms/internal/ads/zzanw;->zzg(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)I

    move-result v12

    if-eq v12, v10, :cond_b

    goto :goto_4

    :cond_b
    if-eq v6, v10, :cond_c

    move v12, v6

    goto :goto_4

    :cond_c
    const/4 v12, 0x1

    .line 13
    :goto_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzans;->zzc()Lcom/google/android/gms/internal/ads/zzant;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    sub-int/2addr v10, v15

    .line 14
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzans;->zzd()I

    move-result v8

    sub-int/2addr v8, v15

    .line 15
    invoke-virtual {v2, v10, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 16
    invoke-virtual {v2, v10, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 17
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdc;

    .line 18
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v12}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v2, v8, v11, v10, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v15, v8

    move v11, v10

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v10, -0x1

    goto :goto_3

    .line 30
    :pswitch_4
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v8, 0x2

    .line 31
    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :pswitch_5
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v8, 0x1

    .line 32
    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33
    :cond_e
    :goto_5
    :pswitch_6
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzanw;->zzh(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x0

    .line 34
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_19

    .line 35
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzanu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzanu;->zzb:Lcom/google/android/gms/internal/ads/zzanp;

    if-nez v1, :cond_f

    const/4 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzf()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_10

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzf()I

    move-result v8

    .line 36
    invoke-direct {v3, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 37
    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzg()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 38
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzo()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 39
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzm()I

    move-result v8

    invoke-direct {v3, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 39
    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzr()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 41
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzp()I

    move-result v8

    invoke-direct {v3, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 41
    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzk()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 43
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzk()Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-direct {v3, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzu()I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_17

    const/4 v8, 0x2

    if-eq v3, v8, :cond_16

    const/4 v9, 0x3

    if-eq v3, v9, :cond_15

    :goto_7
    const/4 v12, 0x1

    goto :goto_8

    .line 45
    :cond_15
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzv()F

    move-result v10

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v10, v12

    .line 46
    invoke-direct {v3, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 45
    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_7

    :cond_16
    const/4 v9, 0x3

    .line 47
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzv()F

    move-result v10

    .line 48
    invoke-direct {v3, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 47
    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_7

    :cond_17
    const/4 v8, 0x2

    const/4 v9, 0x3

    .line 49
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzv()F

    move-result v10

    float-to-int v10, v10

    const/4 v12, 0x1

    .line 50
    invoke-direct {v3, v10, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 49
    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 43
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanp;->zzz()Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdb;-><init>()V

    .line 51
    invoke-virtual {v2, v1, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_19
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static zzg(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanw;->zzh(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, -0x1

    if-ge p1, p2, :cond_1

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzanu;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzanu;->zzb:Lcom/google/android/gms/internal/ads/zzanp;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanp;->zzx()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanp;->zzx()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static zzh(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 4
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzant;->zza:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzant;->zzd:Ljava/util/Set;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzant;->zzc:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzanp;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzanu;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzanu;-><init>(ILcom/google/android/gms/internal/ads/zzanp;)V

    .line 5
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method
