.class public interface abstract Lkotlinx/serialization/json/JsonDecoder;
.super Ljava/lang/Object;
.source "JsonDecoder.kt"

# interfaces
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Lkotlinx/serialization/encoding/CompositeDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/JsonDecoder$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u00012\u00020\u0002J\n\u0010\u0007\u001a\u00020\u0008H\u00a6\u0080\u0004R\u0013\u0010\u0003\u001a\u00020\u0004X\u00a6\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonDecoder;",
        "Lkotlinx/serialization/encoding/Decoder;",
        "Lkotlinx/serialization/encoding/CompositeDecoder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "decodeJsonElement",
        "Lkotlinx/serialization/json/JsonElement;",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SubclassOptInRequired;
    markerClass = {
        Lkotlinx/serialization/SealedSerializationApi;
    }
.end annotation


# virtual methods
.method public abstract synthetic beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
.end method

.method public abstract synthetic decodeBoolean()Z
.end method

.method public abstract synthetic decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
.end method

.method public abstract synthetic decodeByte()B
.end method

.method public abstract synthetic decodeByteElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)B
.end method

.method public abstract synthetic decodeChar()C
.end method

.method public abstract synthetic decodeCharElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)C
.end method

.method public bridge abstract synthetic decodeCollectionSize(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
.end method

.method public abstract synthetic decodeDouble()D
.end method

.method public abstract synthetic decodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D
.end method

.method public abstract synthetic decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
.end method

.method public abstract synthetic decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
.end method

.method public abstract synthetic decodeFloat()F
.end method

.method public abstract synthetic decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F
.end method

.method public abstract synthetic decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
.end method

.method public abstract synthetic decodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Decoder;
.end method

.method public abstract synthetic decodeInt()I
.end method

.method public abstract synthetic decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
.end method

.method public abstract decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
.end method

.method public abstract synthetic decodeLong()J
.end method

.method public abstract synthetic decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J
.end method

.method public abstract synthetic decodeNotNullMark()Z
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public abstract synthetic decodeNull()Ljava/lang/Void;
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public abstract synthetic decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public bridge abstract synthetic decodeNullableSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public bridge abstract synthetic decodeSequentially()Z
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation
.end method

.method public abstract synthetic decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public bridge abstract synthetic decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
.end method

.method public abstract synthetic decodeShort()S
.end method

.method public abstract synthetic decodeShortElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)S
.end method

.method public abstract synthetic decodeString()Ljava/lang/String;
.end method

.method public abstract synthetic decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
.end method

.method public abstract synthetic endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
.end method

.method public abstract getJson()Lkotlinx/serialization/json/Json;
.end method

.method public abstract synthetic getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
.end method
