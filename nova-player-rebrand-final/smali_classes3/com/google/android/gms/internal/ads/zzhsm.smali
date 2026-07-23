.class final synthetic Lcom/google/android/gms/internal/ads/zzhsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhsm;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhsm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsm;->zza:Lcom/google/android/gms/internal/ads/zzhsm;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhsg;

    sget v0, Lcom/google/android/gms/internal/ads/zzhso;->$r8$clinit:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhsg;->zzd()Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsc;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxe;->zze:Lcom/google/android/gms/internal/ads/zzhxe;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 2
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhsj;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsj;-><init>([B)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhsj;->zza(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhsj;

    .line 7
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzhsj;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsj;

    .line 8
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhsj;->zzb(Ljava/security/spec/ECPoint;)Lcom/google/android/gms/internal/ads/zzhsj;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsj;->zzd()Lcom/google/android/gms/internal/ads/zzhsk;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhsh;

    invoke-direct {p2, v3}, Lcom/google/android/gms/internal/ads/zzhsh;-><init>([B)V

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhsh;->zza(Lcom/google/android/gms/internal/ads/zzhsk;)Lcom/google/android/gms/internal/ads/zzhsh;

    .line 11
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhyf;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhsh;->zzb(Lcom/google/android/gms/internal/ads/zzhyf;)Lcom/google/android/gms/internal/ads/zzhsh;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhsh;->zzc()Lcom/google/android/gms/internal/ads/zzhsi;

    move-result-object p1

    return-object p1
.end method
