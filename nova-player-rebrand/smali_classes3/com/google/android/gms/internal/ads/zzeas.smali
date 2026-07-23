.class public final enum Lcom/google/android/gms/internal/ads/zzeas;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzeas;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzeas;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzeas;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzeas;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeas;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeas;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeas;->zza:Lcom/google/android/gms/internal/ads/zzeas;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeas;

    .line 2
    const-string v3, "AD_LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzeas;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Lcom/google/android/gms/internal/ads/zzeas;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeas;

    .line 3
    const-string v5, "AD_LOAD_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzeas;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzeas;->zzc:Lcom/google/android/gms/internal/ads/zzeas;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzeas;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzeas;->zzd:[Lcom/google/android/gms/internal/ads/zzeas;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzeas;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeas;->zzd:[Lcom/google/android/gms/internal/ads/zzeas;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzeas;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzeas;

    return-object v0
.end method
