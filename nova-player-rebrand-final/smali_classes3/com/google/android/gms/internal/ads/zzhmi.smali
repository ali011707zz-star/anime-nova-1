.class public final Lcom/google/android/gms/internal/ads/zzhmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzhmi;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzhmi;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzhmi;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzhmi;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzhmi;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmi;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmi;->zza:Lcom/google/android/gms/internal/ads/zzhmi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmi;

    const-string v1, "SHA224"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmi;->zzb:Lcom/google/android/gms/internal/ads/zzhmi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmi;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmi;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmi;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmi;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmi;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmi;->zze:Lcom/google/android/gms/internal/ads/zzhmi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmi;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmi;->zzf:Ljava/lang/String;

    return-object v0
.end method
