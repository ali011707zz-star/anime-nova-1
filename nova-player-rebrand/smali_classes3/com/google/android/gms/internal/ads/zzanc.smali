.class final Lcom/google/android/gms/internal/ads/zzanc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Z

.field public final zzd:J

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzani;

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;

.field public final zzi:Lcom/google/android/gms/internal/ads/zzanc;

.field private final zzj:[Ljava/lang/String;

.field private final zzk:Ljava/util/HashMap;

.field private final zzl:Ljava/util/HashMap;

.field private zzm:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanc;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzb:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzf:Lcom/google/android/gms/internal/ads/zzani;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzj:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzc:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzd:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzanc;->zze:J

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzg:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzi:Lcom/google/android/gms/internal/ads/zzanc;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzk:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzl:Ljava/util/HashMap;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzanc;
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanc;

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " *\n *"

    .line 2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v1, " "

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "[ \t\\x0B\u000c\r]+"

    .line 4
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    const-string v9, ""

    move-wide v5, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzanc;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanc;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanc;)Lcom/google/android/gms/internal/ads/zzanc;
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanc;

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzanc;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanc;)V

    return-object v0
.end method

.method private final zzi(Ljava/util/TreeSet;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zza:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_0

    if-nez v1, :cond_0

    const-string v2, "div"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzh:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzd:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzanc;->zze:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    .line 3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    .line 4
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzanc;

    const/4 v4, 0x1

    if-nez p2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    :cond_4
    :goto_1
    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzanc;->zzi(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final zzj(JLjava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanc;->zzc(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v1, :cond_0

    move-object p3, v0

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zza:Ljava/lang/String;

    const-string v2, "div"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzh:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 3
    invoke-direct {p1, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanc;->zzf()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzanc;->zze(I)Lcom/google/android/gms/internal/ads/zzanc;

    move-result-object v1

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzanc;->zzj(JLjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final zzk(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 12

    move-object/from16 v5, p5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzl:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zza:Ljava/lang/String;

    const-string v2, "metadata"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzg:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    if-eq v7, v3, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object/from16 v4, p4

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzc:Z

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 18
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzanc;->zzl(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzb:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_2
    const-string v2, "br"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0xa

    if-eqz v2, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzanc;->zzl(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    .line 18
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzanc;->zzc(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcw;->zzb()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    .line 6
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanc;->zzf()I

    move-result v0

    if-ge v11, v0, :cond_8

    .line 7
    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/ads/zzanc;->zze(I)Lcom/google/android/gms/internal/ads/zzanc;

    move-result-object v0

    if-nez p3, :cond_6

    if-eqz v9, :cond_7

    :cond_6
    move-wide v1, p1

    move v3, v7

    goto :goto_4

    :cond_7
    move-wide v1, p1

    move v3, v10

    .line 8
    :goto_4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzanc;->zzk(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    if-eqz v9, :cond_a

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzanc;->zzl(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_9

    .line 11
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p3

    const/16 v0, 0x20

    if-ne p3, v0, :cond_9

    goto :goto_5

    :cond_9
    if-ltz p2, :cond_a

    .line 12
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p2

    if-eq p2, v8, :cond_a

    .line 13
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 14
    :cond_a
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcw;->zzb()Ljava/lang/CharSequence;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method

.method private static zzl(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 2
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcw;

    .line 3
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcw;->zzb()Ljava/lang/CharSequence;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method private final zzm(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    .line 1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzanc;->zzc(J)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanc;->zzg:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p5

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanc;->zzl:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanc;->zzk:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 4
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v8, v2, :cond_23

    move-object/from16 v9, p6

    .line 5
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzcw;

    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v10, p4

    .line 6
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzang;

    .line 51
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v11, v11, Lcom/google/android/gms/internal/ads/zzang;->zzj:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzanc;->zzf:Lcom/google/android/gms/internal/ads/zzani;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzanc;->zzj:[Ljava/lang/String;

    .line 7
    invoke-static {v12, v13, v4}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzani;

    move-result-object v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcw;->zzb()Ljava/lang/CharSequence;

    move-result-object v13

    .line 8
    check-cast v13, Landroid/text/SpannableStringBuilder;

    if-nez v13, :cond_4

    new-instance v13, Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 10
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcw;

    :cond_4
    if-eqz v12, :cond_2

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzanc;->zzi:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zza()I

    move-result v15

    const/4 v5, -0x1

    const/16 v3, 0x21

    if-eq v15, v5, :cond_5

    new-instance v15, Landroid/text/style/StyleSpan;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zza()I

    move-result v5

    .line 11
    invoke-direct {v15, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 12
    invoke-interface {v13, v15, v8, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzb()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 13
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {v13, v5, v8, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzd()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 14
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v13, v5, v8, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzl()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 15
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzj()I

    move-result v15

    invoke-direct {v5, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 15
    invoke-static {v13, v5, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_8
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzo()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 17
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    .line 18
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzm()I

    move-result v15

    invoke-direct {v5, v15}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 17
    invoke-static {v13, v5, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_9
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzh()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 19
    new-instance v5, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzh()Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-direct {v5, v15}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v13, v5, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_a
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzE()Lcom/google/android/gms/internal/ads/zzanb;

    move-result-object v5

    const/4 v15, 0x2

    if-eqz v5, :cond_f

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzE()Lcom/google/android/gms/internal/ads/zzanb;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget v3, v5, Lcom/google/android/gms/internal/ads/zzanb;->zza:I

    move-object/from16 v17, v1

    const/4 v1, -0x1

    if-ne v3, v1, :cond_d

    if-eq v11, v15, :cond_b

    const/4 v1, 0x1

    if-ne v11, v1, :cond_c

    :cond_b
    const/4 v1, 0x3

    goto :goto_3

    :cond_c
    const/4 v1, 0x1

    :goto_3
    move v3, v1

    const/4 v1, 0x1

    goto :goto_4

    .line 37
    :cond_d
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    .line 21
    :goto_4
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzanb;->zzc:I

    const/4 v11, -0x2

    if-ne v5, v11, :cond_e

    const/4 v5, 0x1

    .line 22
    :cond_e
    new-instance v11, Lcom/google/android/gms/internal/ads/zzde;

    invoke-direct {v11, v3, v1, v5}, Lcom/google/android/gms/internal/ads/zzde;-><init>(III)V

    const/16 v1, 0x21

    invoke-static {v13, v11, v8, v2, v1}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_5

    :cond_f
    move-object/from16 v17, v1

    :goto_5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzv()I

    move-result v1

    if-eq v1, v15, :cond_11

    const/4 v3, 0x3

    if-eq v1, v3, :cond_10

    const/4 v3, 0x4

    if-eq v1, v3, :cond_10

    goto/16 :goto_b

    .line 30
    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzana;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzana;-><init>()V

    const/16 v3, 0x21

    .line 37
    invoke-interface {v13, v1, v8, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_b

    :cond_11
    :goto_6
    if-eqz v14, :cond_13

    .line 40
    iget-object v3, v14, Lcom/google/android/gms/internal/ads/zzanc;->zzf:Lcom/google/android/gms/internal/ads/zzani;

    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzanc;->zzj:[Ljava/lang/String;

    .line 23
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzani;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzani;->zzv()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_14

    :cond_12
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzanc;->zzi:Lcom/google/android/gms/internal/ads/zzanc;

    goto :goto_6

    :cond_13
    const/4 v14, 0x0

    :cond_14
    if-eqz v14, :cond_1b

    new-instance v3, Ljava/util/ArrayDeque;

    .line 24
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 25
    invoke-interface {v3, v14}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 26
    :cond_15
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    .line 27
    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzanc;

    .line 28
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzanc;->zzf:Lcom/google/android/gms/internal/ads/zzani;

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzanc;->zzj:[Ljava/lang/String;

    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzani;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzani;->zzv()I

    move-result v1

    const/4 v11, 0x3

    if-ne v1, v11, :cond_16

    move-object v1, v5

    goto :goto_8

    .line 29
    :cond_16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzanc;->zzf()I

    move-result v1

    const/16 v16, -0x1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_15

    .line 30
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zze(I)Lcom/google/android/gms/internal/ads/zzanc;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_1b

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzf()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1a

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzanc;->zze(I)Lcom/google/android/gms/internal/ads/zzanc;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzanc;->zzb:Ljava/lang/String;

    if-eqz v5, :cond_1a

    .line 33
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzanc;->zze(I)Lcom/google/android/gms/internal/ads/zzanc;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzanc;->zzb:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzanc;->zzf:Lcom/google/android/gms/internal/ads/zzani;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzanc;->zzj:[Ljava/lang/String;

    .line 34
    invoke-static {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzani;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzani;->zzx()I

    move-result v1

    :goto_9
    const/4 v5, -0x1

    goto :goto_a

    :cond_18
    const/4 v1, -0x1

    goto :goto_9

    :goto_a
    if-ne v1, v5, :cond_19

    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzanc;->zzf:Lcom/google/android/gms/internal/ads/zzani;

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzanc;->zzj:[Ljava/lang/String;

    .line 35
    invoke-static {v5, v11, v4}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzani;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzani;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzani;->zzx()I

    move-result v1

    .line 36
    :cond_19
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v5, v3, v1}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x21

    invoke-interface {v13, v5, v8, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_1a
    const-string v1, "TtmlRenderUtil"

    const-string v3, "Skipping rubyText node without exactly one text child."

    .line 32
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1b
    :goto_b
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzC()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdb;-><init>()V

    const/16 v3, 0x21

    .line 38
    invoke-static {v13, v1, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_c

    :cond_1c
    const/16 v3, 0x21

    :goto_c
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzI()I

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v11, 0x1

    if-eq v1, v11, :cond_1f

    if-eq v1, v15, :cond_1e

    const/4 v11, 0x3

    if-eq v1, v11, :cond_1d

    :goto_d
    const/4 v14, 0x1

    goto :goto_e

    .line 42
    :cond_1d
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzJ()F

    move-result v1

    div-float/2addr v1, v5

    .line 39
    invoke-static {v13, v1, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Landroid/text/Spannable;FIII)V

    goto :goto_d

    .line 40
    :cond_1e
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzJ()F

    move-result v11

    .line 41
    invoke-direct {v1, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 40
    invoke-static {v13, v1, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_d

    .line 42
    :cond_1f
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzJ()F

    move-result v11

    float-to-int v11, v11

    const/4 v14, 0x1

    .line 43
    invoke-direct {v1, v11, v14}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 42
    invoke-static {v13, v1, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzdd;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 38
    :goto_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanc;->zza:Ljava/lang/String;

    const-string v2, "p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzq()F

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_20

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzq()F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 44
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzp(F)Lcom/google/android/gms/internal/ads/zzcw;

    :cond_20
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzy()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzy()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 45
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcw;

    :cond_21
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzA()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzani;->zzA()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 46
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zze(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcw;

    :cond_22
    move v3, v14

    move-object/from16 v1, v17

    goto/16 :goto_1

    :cond_23
    move-object/from16 v10, p4

    move-object/from16 v9, p6

    goto/16 :goto_1

    :cond_24
    const/4 v3, 0x0

    move v8, v3

    :goto_f
    move-object/from16 v10, p4

    move-object/from16 v9, p6

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzf()I

    move-result v1

    if-ge v8, v1, :cond_25

    .line 48
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzanc;->zze(I)Lcom/google/android/gms/internal/ads/zzanc;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object v7, v9

    move-object v5, v10

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzanc;->zzm(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, p3

    goto :goto_f

    :cond_25
    :goto_10
    return-void
.end method


# virtual methods
.method public final zzc(J)Z
    .locals 8

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zze:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    :goto_0
    cmp-long v4, v0, p1

    if-gtz v4, :cond_3

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzanc;->zze:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    return v5

    :cond_3
    :goto_1
    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zze:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    return v5

    :cond_5
    :goto_2
    const/4 v0, 0x0

    if-gtz v4, :cond_6

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzanc;->zze:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_6

    return v5

    :cond_6
    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzanc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzanc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzanc;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final zzf()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzm:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzg()[J
    .locals 6

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzi(Ljava/util/TreeSet;Z)V

    .line 3
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 4
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    .line 5
    aput-wide v3, v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final zzh(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzanc;->zzg:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1, p2, v5, v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzj(JLjava/lang/String;Ljava/util/List;)V

    new-instance v6, Ljava/util/TreeMap;

    .line 3
    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzanc;->zzk(JZLjava/lang/String;Ljava/util/Map;)V

    move-object v4, p3

    move-object v7, v6

    move-object v6, v5

    move-object v5, p4

    .line 5
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzanc;->zzm(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    move-object v6, v7

    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Landroid/util/Pair;

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v2, p3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 10
    array-length v3, v2

    invoke-static {v2, p3, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzang;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    .line 12
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzb:F

    .line 13
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    .line 14
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzcw;->zzj(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzc:F

    .line 15
    invoke-virtual {v3, v2, p3}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zze:I

    .line 16
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzf:F

    .line 17
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzm(F)Lcom/google/android/gms/internal/ads/zzcw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzg:F

    .line 18
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(F)Lcom/google/android/gms/internal/ads/zzcw;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzj:I

    .line 19
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo(I)Lcom/google/android/gms/internal/ads/zzcw;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v1

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    invoke-interface {v5, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/internal/ads/zzang;

    .line 54
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzcw;

    .line 26
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcw;->zzb()Ljava/lang/CharSequence;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 27
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzana;

    invoke-virtual {v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzana;

    .line 28
    array-length v2, v1

    move v3, p3

    :goto_3
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 29
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v7, ""

    invoke-virtual {v0, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v1, p3

    .line 30
    :goto_4
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_4

    move v4, v2

    .line 32
    :goto_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    sub-int/2addr v4, v2

    if-lez v4, :cond_4

    add-int/2addr v4, v1

    .line 33
    invoke-virtual {v0, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    move v1, v2

    goto :goto_4

    .line 34
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, p3, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v1, p3

    .line 36
    :goto_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0xa

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_7

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_7

    add-int/lit8 v1, v1, 0x2

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    move v1, v2

    goto :goto_6

    .line 39
    :cond_8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_9

    .line 40
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v1, p3

    .line 41
    :goto_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    add-int/lit8 v2, v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_a

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_a

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    move v1, v2

    goto :goto_7

    .line 44
    :cond_b
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_c

    .line 45
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_c
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzang;->zzc:F

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzang;->zzd:I

    .line 46
    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p5, Lcom/google/android/gms/internal/ads/zzang;->zze:I

    .line 47
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p5, Lcom/google/android/gms/internal/ads/zzang;->zzb:F

    .line 48
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p5, Lcom/google/android/gms/internal/ads/zzang;->zzf:F

    .line 49
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzm(F)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p5, Lcom/google/android/gms/internal/ads/zzang;->zzi:F

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzang;->zzh:I

    .line 50
    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(FI)Lcom/google/android/gms/internal/ads/zzcw;

    iget p5, p5, Lcom/google/android/gms/internal/ads/zzang;->zzj:I

    .line 51
    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/ads/zzcw;->zzo(I)Lcom/google/android/gms/internal/ads/zzcw;

    .line 52
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    return-object p1
.end method
