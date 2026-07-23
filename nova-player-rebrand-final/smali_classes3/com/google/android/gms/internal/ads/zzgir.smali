.class final enum Lcom/google/android/gms/internal/ads/zzgir;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzgir;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzgir;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzgir;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzgir;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzgir;

.field public static final enum zzf:Lcom/google/android/gms/internal/ads/zzgir;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/ads/zzgir;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgir;

    const-string v1, "RESULT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgir;->zza:Lcom/google/android/gms/internal/ads/zzgir;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgir;

    .line 2
    const-string v3, "RESULT_NOOP_LOCAL_PROGRAM_STILL_VALID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgir;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgir;->zzb:Lcom/google/android/gms/internal/ads/zzgir;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgir;

    .line 3
    const-string v5, "RESULT_UPDATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzgir;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgir;->zzc:Lcom/google/android/gms/internal/ads/zzgir;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgir;

    .line 4
    const-string v7, "RESULT_NOOP_NO_NEW_PROGRAM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzgir;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzgir;->zzd:Lcom/google/android/gms/internal/ads/zzgir;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgir;

    .line 5
    const-string v9, "RESULT_FAILURE_INVALID_RESPONSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzgir;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzgir;->zze:Lcom/google/android/gms/internal/ads/zzgir;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzgir;

    .line 6
    const-string v11, "RESULT_FAILURE_FETCHER_HTTP_RUNTIME_EXCEPTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzgir;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzgir;->zzf:Lcom/google/android/gms/internal/ads/zzgir;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/ads/zzgir;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/ads/zzgir;->zzg:[Lcom/google/android/gms/internal/ads/zzgir;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzgir;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgir;->zzg:[Lcom/google/android/gms/internal/ads/zzgir;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzgir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgir;

    return-object v0
.end method
