.class final Lcom/google/android/gms/internal/consent_sdk/zzph;
.super Lcom/google/android/gms/internal/consent_sdk/zzpk;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpk;-><init>([B)V

    const/16 p2, 0x2f

    array-length p1, p1

    const/4 p3, 0x0

    .line 2
    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzi(III)I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 4

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2f

    rsub-int/lit8 v0, v0, 0x2f

    or-int/2addr v0, p1

    if-gez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index > length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method final zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected final zzc()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 0
    const/16 v0, 0x2f

    return v0
.end method
