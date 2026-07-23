.class public final enum Lcom/google/android/gms/internal/ads/zzfsp;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfsp;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfsp;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfsp;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzfsp;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsp;

    const-string v1, "CTV"

    const/4 v2, 0x0

    const-string v3, "ctv"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsp;->zza:Lcom/google/android/gms/internal/ads/zzfsp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsp;

    .line 2
    const-string v3, "MOBILE"

    const/4 v4, 0x1

    const-string v5, "mobile"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfsp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfsp;->zzb:Lcom/google/android/gms/internal/ads/zzfsp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfsp;

    .line 3
    const-string v5, "OTHER"

    const/4 v6, 0x2

    const-string v7, "other"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfsp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfsp;->zzc:Lcom/google/android/gms/internal/ads/zzfsp;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzfsp;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzfsp;->zze:[Lcom/google/android/gms/internal/ads/zzfsp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsp;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfsp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsp;->zze:[Lcom/google/android/gms/internal/ads/zzfsp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfsp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfsp;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsp;->zzd:Ljava/lang/String;

    return-object v0
.end method
