.class Lcom/google/android/gms/internal/consent_sdk/zzpk;
.super Lcom/google/android/gms/internal/consent_sdk/zzpj;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpj;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzpl;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    return-void
.end method


# virtual methods
.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected zzc()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public zzd()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    array-length v0, v0

    return v0
.end method

.method protected final zze(III)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzqs;->zzb(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/consent_sdk/zzpm;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zzd()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x2f

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzi(III)I

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzph;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzph;-><init>([BII)V

    return-object p1
.end method

.method final zzg(Lcom/google/android/gms/internal/consent_sdk/zzpe;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zzd()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpe;->zza([BII)V

    return-void
.end method

.method protected final zzh(Lcom/google/android/gms/internal/consent_sdk/zzpm;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzpk;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zzd()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzpk;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    .line 6
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zzc()I

    const/4 p1, 0x0

    move v3, p1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 8
    aget-byte v5, v1, v3

    aget-byte v6, v2, v4

    if-eq v5, v6, :cond_0

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 3
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ran off end of other: 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zzd()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzh(Lcom/google/android/gms/internal/consent_sdk/zzpm;)Z

    move-result p1

    return p1
.end method
