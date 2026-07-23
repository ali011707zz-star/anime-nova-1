.class public final Lcom/google/android/gms/internal/ads/zzhul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhuo;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhyf;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhyf;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhyf;

.field private zze:Lcom/google/android/gms/internal/ads/zzhyf;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhyf;

.field private zzg:Lcom/google/android/gms/internal/ads/zzhyf;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zza:Lcom/google/android/gms/internal/ads/zzhuo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzc:Lcom/google/android/gms/internal/ads/zzhyf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzd:Lcom/google/android/gms/internal/ads/zzhyf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zze:Lcom/google/android/gms/internal/ads/zzhyf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzf:Lcom/google/android/gms/internal/ads/zzhyf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzg:Lcom/google/android/gms/internal/ads/zzhyf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhuo;)Lcom/google/android/gms/internal/ads/zzhul;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zza:Lcom/google/android/gms/internal/ads/zzhuo;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhyf;)Lcom/google/android/gms/internal/ads/zzhul;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzc:Lcom/google/android/gms/internal/ads/zzhyf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzd:Lcom/google/android/gms/internal/ads/zzhyf;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhyf;)Lcom/google/android/gms/internal/ads/zzhul;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhyf;)Lcom/google/android/gms/internal/ads/zzhul;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zze:Lcom/google/android/gms/internal/ads/zzhyf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzf:Lcom/google/android/gms/internal/ads/zzhyf;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhyf;)Lcom/google/android/gms/internal/ads/zzhul;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzg:Lcom/google/android/gms/internal/ads/zzhyf;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhum;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhul;->zza:Lcom/google/android/gms/internal/ads/zzhuo;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzc:Lcom/google/android/gms/internal/ads/zzhyf;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzd:Lcom/google/android/gms/internal/ads/zzhyf;

    if-eqz v1, :cond_a

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    if-eqz v1, :cond_9

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zze:Lcom/google/android/gms/internal/ads/zzhyf;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzf:Lcom/google/android/gms/internal/ads/zzhyf;

    if-eqz v1, :cond_8

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzg:Lcom/google/android/gms/internal/ads/zzhyf;

    if-eqz v1, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuo;->zzf()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuk;->zzd()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhul;->zza:Lcom/google/android/gms/internal/ads/zzhuo;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhuo;->zzd()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzc:Lcom/google/android/gms/internal/ads/zzhyf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzd:Lcom/google/android/gms/internal/ads/zzhyf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v4

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v5

    .line 10
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhul;->zze:Lcom/google/android/gms/internal/ads/zzhyf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v6

    .line 11
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzf:Lcom/google/android/gms/internal/ads/zzhyf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v7

    .line 12
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzg:Lcom/google/android/gms/internal/ads/zzhyf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v8

    .line 13
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v8, 0xa

    .line 14
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 16
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 18
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 20
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 21
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 22
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 23
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 27
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhum;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhul;->zza:Lcom/google/android/gms/internal/ads/zzhuo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzc:Lcom/google/android/gms/internal/ads/zzhyf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzd:Lcom/google/android/gms/internal/ads/zzhyf;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhul;->zze:Lcom/google/android/gms/internal/ads/zzhyf;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzf:Lcom/google/android/gms/internal/ads/zzhyf;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzhul;->zzg:Lcom/google/android/gms/internal/ads/zzhyf;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzhum;-><init>(Lcom/google/android/gms/internal/ads/zzhuo;Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhyf;Lcom/google/android/gms/internal/ads/zzhyf;[B)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "qInv is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dQ is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dP is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "D is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Prime p times prime q is not equal to the public key\'s modulus"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "q is not a prime"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "p is not a prime"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without CRT coefficient"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime exponents"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without private exponent"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime factors"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a RSA SSA PKCS1 public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
