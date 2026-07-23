.class public abstract Lcom/google/android/gms/internal/consent_sdk/zzdw;
.super Lcom/google/android/gms/internal/consent_sdk/zzds;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzds;-><init>()V

    return-void
.end method

.method static zzf(I)I
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "collection too large"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzi()Lcom/google/android/gms/internal/consent_sdk/zzdw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzdz;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdz;

    return-object v0
.end method

.method public static zzj(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdw;
    .locals 0

    const/4 p0, 0x4

    .line 1
    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "IABTCF_TCString"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "IABGPP_HDR_GppString"

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "IABGPP_GppSID"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "IABUSPrivacy_String"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzm(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdw;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdw;
    .locals 0

    const/4 p0, 0x5

    .line 1
    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "UMP_CoMoAdStoragePurposeConsentStatus"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "UMP_CoMoAdUserDataPurposeConsentStatus"

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "UMP_CoMoAdPersonalizationPurposeConsentStatus"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "UMP_CoMoAnalyticsStoragePurposeConsentStatus"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "IABTCF_gdprApplies"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzm(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdw;

    move-result-object p0

    return-object p0
.end method

.method private static varargs zzm(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdw;
    .locals 13

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzf(I)I

    move-result v2

    .line 5
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v5, v3

    move v8, v5

    :goto_0
    if-ge v3, p0, :cond_3

    .line 6
    aget-object v4, p1, v3

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 8
    invoke-static {v9}, Lcom/google/android/gms/internal/consent_sdk/zzdr;->zza(I)I

    move-result v10

    :goto_1
    and-int v11, v10, v7

    .line 9
    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 11
    aput-object v4, p1, v8

    .line 12
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v3, 0x0

    .line 14
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4

    aget-object p0, p1, v0

    .line 15
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzea;

    .line 16
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzea;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    div-int/lit8 v2, v2, 0x2

    .line 17
    invoke-static {v8}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzf(I)I

    move-result p0

    if-lt p0, v2, :cond_6

    const/4 p0, 0x3

    if-ge v8, p0, :cond_5

    .line 18
    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v4, p1

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzdz;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzdz;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v3

    .line 20
    :cond_6
    invoke-static {v8, p1}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzm(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdw;

    move-result-object p0

    return-object p0

    .line 13
    :cond_7
    aget-object p0, p1, v0

    .line 2
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzea;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzea;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 1
    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/consent_sdk/zzdz;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdz;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/consent_sdk/zzdw;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzl()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzdw;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    return v0

    .line 4
    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_5

    .line 5
    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    :catch_0
    :cond_5
    return v2
.end method

.method public abstract hashCode()I
.end method

.method public final zzg()Lcom/google/android/gms/internal/consent_sdk/zzdv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zzh()Lcom/google/android/gms/internal/consent_sdk/zzdv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;

    :cond_0
    return-object v0
.end method

.method zzh()Lcom/google/android/gms/internal/consent_sdk/zzdv;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzds;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/consent_sdk/zzdv;->$r8$clinit:I

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdv;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/consent_sdk/zzdv;

    move-result-object v0

    return-object v0
.end method

.method zzl()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
