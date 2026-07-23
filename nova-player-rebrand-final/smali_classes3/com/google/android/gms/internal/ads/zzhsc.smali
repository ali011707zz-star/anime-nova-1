.class public final Lcom/google/android/gms/internal/ads/zzhsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzhsc;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzhsc;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzhsc;


# instance fields
.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsc;

    const-string v1, "NIST_P256"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhis;->zza:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhsc;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsc;->zza:Lcom/google/android/gms/internal/ads/zzhsc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsc;

    const-string v1, "NIST_P384"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhis;->zzb:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhsc;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsc;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsc;

    const-string v1, "NIST_P521"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhis;->zzc:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhsc;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsc;->zzc:Lcom/google/android/gms/internal/ads/zzhsc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsc;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhsc;->zze:Ljava/security/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsc;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zza()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsc;->zze:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method
