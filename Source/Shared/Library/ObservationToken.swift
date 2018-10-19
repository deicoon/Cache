import Foundation

public final class ObservationToken {
    
  public let uuid: UUID
  private let cancellationClosure: (UUID) -> Void

  init(uuid: UUID, cancellationClosure: @escaping (UUID) -> Void) {
    self.cancellationClosure = cancellationClosure
    self.uuid = uuid
  }

  public func cancel() {
    cancellationClosure(uuid)
  }
}
