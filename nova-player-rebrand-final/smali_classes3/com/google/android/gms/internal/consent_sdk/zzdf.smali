.class abstract Lcom/google/android/gms/internal/consent_sdk/zzdf;
.super Lcom/google/android/gms/internal/consent_sdk/zzdd;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdd;-><init>()V

    const-string p1, "CharMatcher.none()"

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdf;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdf;->zza:Ljava/lang/String;

    return-object v0
.end method
