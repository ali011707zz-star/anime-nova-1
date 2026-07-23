.class public final enum Lcom/google/android/gms/internal/ads/zzhwx;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzhwx;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzhwx;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/ads/zzhwx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwx;

    const-string v1, "IEEE_P1363"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhwx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwx;->zza:Lcom/google/android/gms/internal/ads/zzhwx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhwx;

    .line 2
    const-string v3, "DER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhwx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhwx;->zzb:Lcom/google/android/gms/internal/ads/zzhwx;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzhwx;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/gms/internal/ads/zzhwx;->zzc:[Lcom/google/android/gms/internal/ads/zzhwx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzhwx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwx;->zzc:[Lcom/google/android/gms/internal/ads/zzhwx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzhwx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhwx;

    return-object v0
.end method
