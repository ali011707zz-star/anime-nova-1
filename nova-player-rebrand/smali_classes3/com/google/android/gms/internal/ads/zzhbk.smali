.class public final Lcom/google/android/gms/internal/ads/zzhbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjj;


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhjr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhbk;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhjr;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhib;->zza:Lcom/google/android/gms/internal/ads/zzhic;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhic;->zza()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/HashSet;

    .line 2
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhbi;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzd()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x79

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "KeyID "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zzc:Lcom/google/android/gms/internal/ads/zzhbk;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhjr;Lcom/google/android/gms/internal/ads/zzhbk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zzc:Lcom/google/android/gms/internal/ads/zzhbk;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhjr;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhbk;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhjr;)V

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/ads/zzhql;)Lcom/google/android/gms/internal/ads/zzhbk;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzc()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzi(Lcom/google/android/gms/internal/ads/zzhql;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhjr;->zza:Lcom/google/android/gms/internal/ads/zzhjr;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhbk;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhjr;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final zzf(Lcom/google/android/gms/internal/ads/zzhbp;)Lcom/google/android/gms/internal/ads/zzhbk;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhbf;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhbd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhbd;-><init>(Lcom/google/android/gms/internal/ads/zzhbp;[B)V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbd;->zzb()Lcom/google/android/gms/internal/ads/zzhbd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbd;->zza()Lcom/google/android/gms/internal/ads/zzhbd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbf;->zza(Lcom/google/android/gms/internal/ads/zzhbd;)Lcom/google/android/gms/internal/ads/zzhbf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbf;->zzb()Lcom/google/android/gms/internal/ads/zzhbk;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzhbk;)Lcom/google/android/gms/internal/ads/zzhbk;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjr;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzhbj;

    invoke-direct {v8, p0, v0}, Lcom/google/android/gms/internal/ads/zzhbj;-><init>(Lcom/google/android/gms/internal/ads/zzhbk;Lcom/google/android/gms/internal/ads/zzhjr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhbi;

    move-object v3, v2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhbi;

    move-object v4, v3

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhbi;->zzf()Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v3

    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhbi;->zzj()I

    move-result v4

    move-object v6, v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhbi;->zzg()I

    move-result v5

    move-object v7, v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhbi;->zzh()Z

    move-result v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhbi;->zzi()Z

    move-result v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzhbi;-><init>(Lcom/google/android/gms/internal/ads/zzhaz;IIZZLcom/google/android/gms/internal/ads/zzhbg;[B)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhbk;

    invoke-direct {v1, v10, v0, p0}, Lcom/google/android/gms/internal/ads/zzhbk;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhjr;Lcom/google/android/gms/internal/ads/zzhbk;)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzhql;)Ljava/util/List;
    .locals 12

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzc()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzb()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhqk;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqk;->zzc()I

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhbk;->zzk(Lcom/google/android/gms/internal/ads/zzhqk;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbt;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v8

    .line 6
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzf(Lcom/google/android/gms/internal/ads/zzhlg;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzhjo;

    .line 7
    invoke-direct {v6, v0, v8}, Lcom/google/android/gms/internal/ads/zzhjo;-><init>(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v6, v0, v8}, Lcom/google/android/gms/internal/ads/zzhkg;->zzg(Lcom/google/android/gms/internal/ads/zzhlg;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v9, v5

    goto :goto_3

    .line 9
    :goto_2
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhib;->zza:Lcom/google/android/gms/internal/ads/zzhic;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzhic;->zza()Z

    move-result v6

    if-nez v6, :cond_4

    .line 16
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhjo;

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhbk;->zzk(Lcom/google/android/gms/internal/ads/zzhqk;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbt;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lcom/google/android/gms/internal/ads/zzhjo;-><init>(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)V

    move v9, v4

    .line 11
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhib;->zza:Lcom/google/android/gms/internal/ads/zzhic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhic;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqk;->zzk()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzl(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v8, v4

    goto :goto_4

    .line 16
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :goto_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhbi;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqk;->zzk()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zza()I

    move-result v3

    if-ne v7, v3, :cond_3

    goto :goto_5

    :cond_3
    move v8, v5

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbi;->zze()Lcom/google/android/gms/internal/ads/zzhbg;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, v6

    move v6, v0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/zzhbi;-><init>(Lcom/google/android/gms/internal/ads/zzhaz;IIZZLcom/google/android/gms/internal/ads/zzhbg;[B)V

    .line 14
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 15
    :cond_4
    throw v0

    .line 17
    :cond_5
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzj()Lcom/google/android/gms/internal/ads/zzhbk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zzc:Lcom/google/android/gms/internal/ads/zzhbk;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzhqk;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqk;->zzc()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqk;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhqc;->zza()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqc;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqc;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqk;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

    .line 7
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(I)Z
    .locals 2

    .line 0
    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzb()Lcom/google/android/gms/internal/ads/zzhql;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzhbw;->$r8$clinit:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqp;->zza()Lcom/google/android/gms/internal/ads/zzhqm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhql;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqm;->zza(I)Lcom/google/android/gms/internal/ads/zzhqm;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhql;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhqk;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqo;->zza()Lcom/google/android/gms/internal/ads/zzhqn;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhqc;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhqn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqn;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzk()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhqn;->zzd(I)Lcom/google/android/gms/internal/ads/zzhqn;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhqn;->zzc(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhqn;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzc()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzhqn;->zzb(I)Lcom/google/android/gms/internal/ads/zzhqn;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhqo;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqm;->zzb(Lcom/google/android/gms/internal/ads/zzhqo;)Lcom/google/android/gms/internal/ads/zzhqm;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhqp;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzhql;
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhql;->zzh()Lcom/google/android/gms/internal/ads/zzhqi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhbi;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zza()Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzj()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result v5

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v6

    const-class v7, Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbt;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v8

    .line 5
    invoke-virtual {v6, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzhkg;->zzh(Lcom/google/android/gms/internal/ads/zzhaz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhlb;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhaz;->zzb()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Wrong ID set for key with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqk;->zze()Lcom/google/android/gms/internal/ads/zzhqj;

    move-result-object v3

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqc;->zzd()Lcom/google/android/gms/internal/ads/zzhqa;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzhqa;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqa;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhlb;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v8

    .line 11
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzhqa;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqa;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhlb;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v8

    .line 12
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzhqa;->zzc(Lcom/google/android/gms/internal/ads/zzhqb;)Lcom/google/android/gms/internal/ads/zzhqa;

    .line 13
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzhqj;->zzb(Lcom/google/android/gms/internal/ads/zzhqa;)Lcom/google/android/gms/internal/ads/zzhqj;

    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhqj;->zze(I)Lcom/google/android/gms/internal/ads/zzhqj;

    .line 15
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzhqj;->zzc(I)Lcom/google/android/gms/internal/ads/zzhqj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v4

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhqj;->zzd(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhqj;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhqk;

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhqi;->zzb(Lcom/google/android/gms/internal/ads/zzhqk;)Lcom/google/android/gms/internal/ads/zzhqi;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhqi;->zza(I)Lcom/google/android/gms/internal/ads/zzhqi;

    goto/16 :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhql;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 21
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhlm;

    .line 23
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhlm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhbi;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhbi;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzb()Lcom/google/android/gms/internal/ads/zzhbb;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhbb;->zza:Lcom/google/android/gms/internal/ads/zzhbb;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has primary which isn\'t enabled"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has no valid primary"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzhbi;
    .locals 5

    if-ltz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzd()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhbi;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzj()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhbk;->zzl(I)Z

    move-result v2

    const-string v3, "Keyset-Entry at position "

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbi;

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " didn\'t parse correctly"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has wrong status"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzd()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid index "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for keyset of size "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzhaw;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhix;

    if-eqz v0, :cond_d

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhix;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzj()Lcom/google/android/gms/internal/ads/zzhbk;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzb()Lcom/google/android/gms/internal/ads/zzhql;

    move-result-object v0

    .line 4
    sget v1, Lcom/google/android/gms/internal/ads/zzhbw;->$r8$clinit:I

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhql;->zza()I

    move-result v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhql;->zzb()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v7, v3

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzhqk;

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzk()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zza()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzhqy;->zza:Lcom/google/android/gms/internal/ads/zzhqy;

    if-eq v9, v10, :cond_5

    .line 10
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzk()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzc()I

    move-result v9

    if-ne v9, v1, :cond_2

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset contains multiple primary keys"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqc;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhqb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    if-eq v8, v9, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    and-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 18
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v4

    const-string p2, "key %d has unknown status"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v4

    const-string p2, "key %d has unknown prefix"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhqk;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v4

    const-string p2, "key %d has no key data"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v5, :cond_c

    if-nez v6, :cond_9

    if-eqz v7, :cond_8

    goto :goto_3

    .line 26
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzd()I

    move-result v1

    if-ge v4, v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zza:Ljava/util/List;

    .line 21
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhbi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzi()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhbi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzj()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhbk;->zzl(I)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 22
    :cond_a
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzhql;->zzd(I)Lcom/google/android/gms/internal/ads/zzhqk;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqc;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Key parsing of key with index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and type_url "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed, unable to get primitive"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzj()Lcom/google/android/gms/internal/ads/zzhbk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbk;->zzb:Lcom/google/android/gms/internal/ads/zzhjr;

    .line 25
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhix;->zza(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset must contain at least one ENABLED key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Currently only subclasses of InternalConfiguration are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
