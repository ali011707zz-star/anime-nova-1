.class public abstract Lcom/google/android/gms/ads/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "additional_video_csi"

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lcom/google/android/gms/ads/zzh;->zza:Lcom/google/android/gms/common/Feature;

    new-array v1, v4, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/ads/zzh;->zzb:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
