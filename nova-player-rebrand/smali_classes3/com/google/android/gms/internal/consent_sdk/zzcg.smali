.class public final enum Lcom/google/android/gms/internal/consent_sdk/zzcg;
.super Ljava/lang/Enum;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzb:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzc:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzd:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zze:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzf:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzg:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final enum zzh:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/consent_sdk/zzcg;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zza:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 2
    const-string v3, "ALWAYS_SHOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 3
    const-string v5, "GEO_OVERRIDE_EEA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 4
    const-string v7, "GEO_OVERRIDE_REGULATED_US_STATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 5
    const-string v9, "GEO_OVERRIDE_OTHER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zze:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v9, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 6
    const-string v11, "GEO_OVERRIDE_NON_EEA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v11, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 7
    const-string v13, "PREVIEWING_DEBUG_MESSAGES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    new-instance v13, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 8
    const-string v15, "GEO_OVERRIDE_USFL"

    move/from16 v16, v2

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/android/gms/internal/consent_sdk/zzcg;

    aput-object v0, v15, v16

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    aput-object v13, v15, v2

    sput-object v15, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzi:[Lcom/google/android/gms/internal/consent_sdk/zzcg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/zzcg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzi:[Lcom/google/android/gms/internal/consent_sdk/zzcg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/zzcg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/zzcg;

    return-object v0
.end method
