.class public abstract Lcom/google/android/gms/internal/ads/zziaw;
.super Lcom/google/android/gms/internal/ads/zziae;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zza:Z


# instance fields
.field zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zziem;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Z

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziae;-><init>()V

    return-void
.end method

.method public static zzA(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzB(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzC(Lcom/google/android/gms/internal/ads/zzidc;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzidc;->zzbr()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic zzE()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Z

    return v0
.end method

.method static zzz(I)I
    .locals 1

    .line 0
    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method public final zzD()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziaw;->zzb()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzH(II)V
.end method

.method public abstract zzI(II)V
.end method

.method public abstract zzJ(II)V
.end method

.method public abstract zzK(II)V
.end method

.method public abstract zzL(IJ)V
.end method

.method public abstract zzb()I
.end method

.method public abstract zzh(IJ)V
.end method

.method public abstract zzi(IZ)V
.end method

.method public abstract zzj(ILjava/lang/String;)V
.end method

.method public abstract zzk(ILcom/google/android/gms/internal/ads/zzian;)V
.end method

.method public abstract zzl(Lcom/google/android/gms/internal/ads/zzian;)V
.end method

.method abstract zzm([BII)V
.end method

.method public abstract zzp(Lcom/google/android/gms/internal/ads/zzidc;)V
.end method

.method public abstract zzq(B)V
.end method

.method public abstract zzr(I)V
.end method

.method public abstract zzs(I)V
.end method

.method public abstract zzt(I)V
.end method

.method public abstract zzu(J)V
.end method

.method public abstract zzv(J)V
.end method

.method public abstract zzx(Ljava/lang/String;)V
.end method

.method public abstract zzy()V
.end method
