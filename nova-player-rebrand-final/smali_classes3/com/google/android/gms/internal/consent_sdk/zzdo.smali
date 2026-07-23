.class public final Lcom/google/android/gms/internal/consent_sdk/zzdo;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdk;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzdg;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdk;

    return-void
.end method

.method public static zza(C)Lcom/google/android/gms/internal/consent_sdk/zzdo;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzde;

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzde;-><init>(C)V

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdo;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzdk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzdk;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdh;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdo;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdk;)V

    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/consent_sdk/zzdo;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdo;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdk;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzdk;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdh;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzdl;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzdl;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdo;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/consent_sdk/zzdh;)V

    return-object v1
.end method


# virtual methods
.method public final zzb(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzdm;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdo;Ljava/lang/CharSequence;)V

    return-object v0
.end method
