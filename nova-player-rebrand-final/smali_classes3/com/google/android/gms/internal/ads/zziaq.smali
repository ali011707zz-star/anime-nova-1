.class public abstract Lcom/google/android/gms/internal/ads/zziaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field private static volatile zzf:I = 0x64


# instance fields
.field zza:I

.field zzb:I

.field final zzc:I

.field zzd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/google/android/gms/internal/ads/zziaq;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzc:I

    return-void
.end method

.method public static zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zziaq;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzice;->zzb:[B

    .line 2
    array-length p1, p0

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p1, p1, p1}, Lcom/google/android/gms/internal/ads/zziaq;->zzG([BIIZ)Lcom/google/android/gms/internal/ads/zziaq;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zziap;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zziap;-><init>(Ljava/io/InputStream;I[B)V

    return-object p1
.end method

.method static zzG([BIIZ)Lcom/google/android/gms/internal/ads/zziaq;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziao;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zziao;-><init>([BIIZ[B)V

    .line 2
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zziao;->zzz(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzK(I)I
    .locals 1

    .line 0
    and-int/lit8 v0, p0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    neg-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzL(J)J
    .locals 3

    .line 0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    neg-long v0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public abstract zzA(I)V
.end method

.method public abstract zzB()Z
.end method

.method public abstract zzC()I
.end method

.method public final zzH()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziaq;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzb:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzc:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzicg;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzicg;-><init>(Ljava/lang/String;)V

    .line 2
    throw v0
.end method

.method public final zzI()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzb:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzb(I)V

    :cond_0
    return-void
.end method

.method public final zzJ()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziaq;->zza()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziaq;->zzH()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzb:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzc(I)Z

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzb:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zzb:I

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(I)V
.end method

.method public abstract zzc(I)Z
.end method

.method public abstract zzd()D
.end method

.method public abstract zze()F
.end method

.method public abstract zzf()J
.end method

.method public abstract zzg()J
.end method

.method public abstract zzh()I
.end method

.method public abstract zzi()J
.end method

.method public abstract zzj()I
.end method

.method public abstract zzk()Z
.end method

.method public abstract zzl()Ljava/lang/String;
.end method

.method public abstract zzm()Ljava/lang/String;
.end method

.method public abstract zzn()Lcom/google/android/gms/internal/ads/zzian;
.end method

.method public abstract zzo()I
.end method

.method public abstract zzp()I
.end method

.method public abstract zzq()I
.end method

.method public abstract zzr()J
.end method

.method public abstract zzs()I
.end method

.method public abstract zzt()J
.end method

.method public abstract zzz(I)I
.end method
