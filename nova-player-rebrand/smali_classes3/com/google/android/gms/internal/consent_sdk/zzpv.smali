.class public abstract Lcom/google/android/gms/internal/consent_sdk/zzpv;
.super Lcom/google/android/gms/internal/consent_sdk/zzpe;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Z


# instance fields
.field zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/consent_sdk/zzpv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zza:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzx()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzb:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzpu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpe;-><init>()V

    return-void
.end method

.method public static zzA(Lcom/google/android/gms/internal/consent_sdk/zzrq;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzn()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzB(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zzb(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzqs;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzC(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzD(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method static bridge synthetic zzF()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzb:Z

    return v0
.end method


# virtual methods
.method final zzE(Ljava/lang/String;Lcom/google/android/gms/internal/consent_sdk/zzsx;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzqs;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzw(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzI()V
.end method

.method public abstract zzJ(B)V
.end method

.method public abstract zzK(IZ)V
.end method

.method abstract zzL([BII)V
.end method

.method public abstract zza([BII)V
.end method

.method public abstract zzh(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V
.end method

.method public abstract zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V
.end method

.method public abstract zzj(II)V
.end method

.method public abstract zzk(I)V
.end method

.method public abstract zzl(IJ)V
.end method

.method public abstract zzm(J)V
.end method

.method public abstract zzn(II)V
.end method

.method public abstract zzo(I)V
.end method

.method public abstract zzp(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V
.end method

.method public abstract zzs(ILjava/lang/String;)V
.end method

.method public abstract zzt(Ljava/lang/String;)V
.end method

.method public abstract zzu(II)V
.end method

.method public abstract zzv(II)V
.end method

.method public abstract zzw(I)V
.end method

.method public abstract zzx(IJ)V
.end method

.method public abstract zzy(J)V
.end method
