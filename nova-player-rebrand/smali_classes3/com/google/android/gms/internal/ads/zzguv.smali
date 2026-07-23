.class final Lcom/google/android/gms/internal/ads/zzguv;
.super Lcom/google/android/gms/internal/ads/zzgsc;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgwu;


# instance fields
.field private final zzb:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzguv;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzguv;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzguv;->zza:Lcom/google/android/gms/internal/ads/zzgwu;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2, p2}, Lcom/google/android/gms/internal/ads/zzgsc;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguv;->zzb:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguv;->zzb:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
